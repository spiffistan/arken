require 'test_helper'

class ClassificationSystemsRequirementTest < ActiveSupport::TestCase

  # NOTE: 'Class' here is implemented as 'Classification'

  test '5.3.1 (O)' do
    # A Classification system can be subdivided into no, one or more Classes
    # and a Class can belong to just one Classification system.

    assert ClassificationSystem.reflect_on_association(:classifications).macro == :has_many
    assert Classification.reflect_on_association(:classification_system).macro == :belongs_to

    classification_system = FactoryGirl.create(:classification_system)

    assert classification_system.classifications.count == 0

    FactoryGirl.create(:classification, classification_system: classification_system)
    FactoryGirl.create(:classification, classification_system: classification_system)

    assert classification_system.classifications.count == 2
  end

  test '5.3.2 (O)' do
    # A Classification system can form a primary system in no, one or more
    # Series.

    assert ClassificationSystem.reflect_on_association(:series).macro == :has_many
    assert Series.reflect_on_association(:classification_system).macro == :belongs_to

    classification_system = FactoryGirl.create(:classification_system)

    assert classification_system.series.count == 0

    a = FactoryGirl.create(:series, classification_system: classification_system)
    b = FactoryGirl.create(:series, classification_system: classification_system)
    c = FactoryGirl.create(:series, classification_system: classification_system)

    assert [a, b, c].map(&:classification_system).map(&:id).uniq == [classification_system.id]
    assert classification_system.series.count == 3
  end

  test '5.3.3 (O)' do
    # A Class can be included in a hierarchy of Classes (outlined in the model
    # via a self-relation).

    classification_system = FactoryGirl.create(:classification_system)

    parent = FactoryGirl.create(:classification, classification_system: classification_system)
    child = FactoryGirl.create(:classification, classification_system: classification_system, parent: parent)
    grandchild = FactoryGirl.create(:classification, classification_system: classification_system, parent: child)

    assert_equal grandchild.parent, child
    assert_equal child.parent, parent
    assert_equal parent.children.first, child
    assert_equal child.children.first, grandchild
  end

  test '5.3.4 (O)' do
    # A Class can have registered no or one Screening and a Screening can be
    # included in no, one or more Classes.

    # REMARK: Metadata for screening are described in section 4.3.7.1. Metadata
    #         for preservation and disposal are described in section 4.2.10. It
    #         is essentially an obligatory requirement that all records systems
    #         have functions for screening and preservation/disposal. However,
    #         this requirement may be omitted for simple systems without such
    #         needs.

    assert Classification.reflect_on_association(:screening).macro == :belongs_to
    assert Screening.reflect_on_association(:classifications).macro == :has_many
    NOT_YET_IMPLEMENTED
  end

  test '5.3.5 (O)' do
    # REMARK: Same remark as test 5.3.4

    # A Class can have registered no or one Preservation and disposal and a
    # Preservation and disposal can be included in no, one or more Classes.

    assert Classification.reflect_on_association(:preservation_and_disposal).macro == :belongs_to
    assert PreservationAndDisposal.reflect_on_association(:classifications).macro == :has_many
  end

  test '5.3.6 (V)' do
    # A Class can have registered no, one or more Keywords and it should be
    # possible for a Keyword to be included in no, one or more Classes.
    NOT_YET_IMPLEMENTED
  end

  test '5.3.7 (O)' do
    # A Class can be subdivided into no, one or more Files and a File can belong
    # to just one Class.

    # REMARK: A file can have secondary classifications, i.e. be secondarily
    #         linked to other classes. Together, these classes can belong to the
    #         same classification system as the primary class, but they can also
    #         belong to other classification systems. Note that inheritance only
    #         takes place from the primary class. A Class can be subdivided into
    #         no, one or more Files and a File can belong to just one Class.

    assert Classification.reflect_on_association(:filings).macro == :has_many
    assert Filing.reflect_on_association(:classification).macro == :belongs_to
  end

  test '5.3.8 (V)' do
    # It should be possible to describe a Classification system using different
    # classification types.
    #
    # Examples of values:
    #   "Function-based, hierarchical", "Topic-based, hierarchical archive key",
    #   "Topic-based, one level", "K codes", "Multifaceted, not hierarchy",
    #   "Object-based", "National ID number", "Property and house number".

    NOT_YET_IMPLEMENTED
  end

  test '5.3.9 (O)' do
    # It must be possible to establish hierarchical classification systems. The
    # following is standard:
    #   · Common archive key for the state administration
    NOT_YET_IMPLEMENTED
  end

  test '5.3.10 (B)' do
    # REMARK: Obligatory for case records in the municipal sector.

    # It must be possible to establish faceted, hierarchical classification
    # systems. The following is standard:
    #   · The K code key
    NOT_YET_IMPLEMENTED
  end

  test '5.3.11 (O)' do
    # It must be possible to establish one-dimensional classification systems.
    # The following is standard:
    #   · Legal person (private individual or business)
    #   · Property and house number
    NOT_YET_IMPLEMENTED
  end

  test '5.3.12 (O)' do
    # There must be a service/function for updating a hierarchy of Classes.
    NOT_YET_IMPLEMENTED
  end

  test '5.3.13 (B)' do
    # REMARK: For case archives, it must be possible to close (end) classes so
    #         that they can no longer be used.

    # There must be a service/function for specifying whether a value of Class
    # must/must not be used in connection with the classification of cases.
    NOT_YET_IMPLEMENTED
  end

  test '5.3.14 (O)' do
    # In order for a Class to be assigned a File, it must be situated at the
    # bottom level in the class hierarchy.

    # REMARK: A class cannot therefore contain both other classes and files.

    NOT_YET_IMPLEMENTED
  end

  test '5.3.15 (B)' do
    # If the value in Class is registered as finalised (finalisedDate), it must
    # not be possible to assign new Files to the Class.

    # REMARK: Obligatory if it is possible to finalise classes.

    NOT_YET_IMPLEMENTED
  end

  test '5.3.16 (O)' do
    # REMARK: Often, all classes will be entered before the system is taken into
    #         use. However, permission can be given for classes to be created
    #         on an ongoing basis, something which is particularly relevant in
    #         the case of object-based classification.

    # A log must be kept of when a class was created and who created it. Only
    # authorised personnel can create classes. Other users can be given
    # permission to create classes.
    NOT_YET_IMPLEMENTED
  end

  test '5.3.17 (B)' do
    # REMARK: Obligatory if it is possible to finalise classes.

    # A log must be kept of when a class was finalised and who finalised it.
    # Only authorised personnel can finalise classes.
    NOT_YET_IMPLEMENTED
  end

end
