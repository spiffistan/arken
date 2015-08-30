require 'test_helper'

class FileRequirementsTest < ActiveSupport::TestCase
  # NOTE: 'Class' here is implemented as 'Classification'
  # NOTE: '* File' here is implemented as '* Filing'

  test '5.4.1 (O)' do
    # It must be possible for a file to be of different types. In the conceptual
    # model, this is resolved through specialisation.

    assert MeetingFiling < Filing
    assert CaseFiling < Filing
  end

  test '5.4.2 (O)' do
    # A Basic file must belong to a Series and a Series may contain no, one or
    # several Basic files.

    assert_has_many :series, :filings
    assert_belongs_to :filing, :series

    filing = build(:filing, series: nil)
    assert_raise(ActiveRecord::RecordInvalid) { filing.save! }
    assert Filing.count == 0

    series = create(:series)

    assert series.filings.count == 0

    create(:filing, series: series)
    create(:filing, series: series)

    assert series.filings.count == 2
  end

  test '5.4.3 (O)' do
    # A Basic file must be classified with a Class and a Class can classify no,
    # one or several Basic files.

    # REMARK: Classification is obligatory in all case records and will also
    # occur in most task systems.

    assert_has_many :classification, :filings
    assert_belongs_to :filing, :classification

    filing = build(:filing, classification: nil)
    assert_raise(ActiveRecord::RecordInvalid) { filing.save! }
    assert Filing.count == 0

    classification = create(:classification)

    assert classification.filings.count == 0

    create(:filing, classification: classification)
    create(:filing, classification: classification)

    assert classification.filings.count == 2
  end

  test '5.4.4 (B)' do
    # A Basic file can belong to no or one Class and a Class can be included in
    # no, one or several Basic files. This only applies to task systems.

    # REMARK: Classification can be omitted in certain types of task system.

    skip # Deprecated in Noark 5 v3.1
  end

  test '5.4.5 (V)' do
    # It should be possible for a Basic file to be included in other Basic files
    # in a hierarchy. These are called subfiles and are outlined in the model
    # using a self-relation.

    parent = create(:filing)
    child = create(:filing, parent: parent)
    grandchild = create(:filing, parent: child)

    assert_equal grandchild.parent, child
    assert_equal child.parent, parent
    assert_equal parent.children.first, child
    assert_equal child.children.first, grandchild
  end

  test '5.4.6 (O)' do
    # It must be possible for a Basic file to consist of no, one or several
    # Records and a Record can be included in (only) one Basic file.

    assert_has_many :filing, :records
    assert_belongs_to :record, :filing

    filing = create(:filing)

    assert filing.records.count == 0

    create(:record, :for_filing, filing: filing)
    create(:record, :for_filing, filing: filing)

    assert filing.records.count == 2
  end

  test '5.4.7 (O)' do
    # If a Basic file is registered as finalised (finalisedDate), it must not be
    # possible to add more Records to the File.

    filing = create(:filing, :finalized)

    assert_raise(ActiveRecord::RecordInvalid) { create(:record, filing: filing) }
    assert filing.records.count == 0
  end

  test '5.4.8 (B)' do
    # It must be possible to expand a Basic file to a Case file.
    # For case records, it must be possible to use a specialised file type:
    # Case file. A specialised class can be characterised as an expansion of the
    # main class.

    # REMARK: Obligatory for case records.

    filing = create(:filing)

    assert filing.class == Filing

    filing = filing.becomes!(CaseFiling)
    filing.save

    assert Filing.find(filing.id).class == CaseFiling
  end

  test '5.4.9 (B)' do
    # It must be possible to identify a Case file uniquely within the records.
    # It is recommended that this identification is a combination of the case
    # year and a consecutive sequential number for the case files within the
    # year.

    # REMARK: Other ways of identifying case files may be accepted.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.10 (B)' do
    # It must be possible for a Case file to have registered no, one or several
    # Secondary classifications and a Secondary classification belongs to one
    # Case file only and one Class only.

    # REMARK: Obligatory for case files.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.11 (V)' do
    # It should be possible for a Case file to have registered no or one
    # Registry management units and a Registry management unit can be included
    # in no, one or several Case files.

    # REMARK: Registry management unit is no longer obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.12 (B)' do
    # It must be possible for a Case file to have registered no or one
    # Administrative units and an Administrative unit can be included in no,
    # one or several Case files.

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.13 (B)' do
    # It must be possible for a Case file to contain no, one or several Case
    # parts and a Case part must always belong to a Case file.

    # REMARK: Obligatory for case records. See also the remarks below.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.14 (B)' do
    # If a primary classification system is specified for Series, all Files in
    # the series must have values from this classification system as the primary
    # class.

    # REMARK: Obligatory if primary classification system is specified for series.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.15 (B)' do
    # There must be a service/function for updating secondary classification
    # systems against a Case file (referenceSecondaryClassification).

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.16 (V)' do
    # There should be a service/function for updating Registry management unit
    # on a Case file.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.17 (B)' do
    # There must be a service/function for updating Registry Administrative unit
    # on a Case file.

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.18 (B)' do
    # There must be a service/function for updating Case part in connection with
    # a Case file.

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.4.19 (V)' do
    # There should be a service/function for setting up and updating subfiles
    # for a Basic file (file hierarchy).
    NOT_YET_IMPLEMENTED
  end
end
