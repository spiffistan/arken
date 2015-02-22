require 'test_helper'

class DocumentRequirementsTest < ActiveSupport::TestCase

  # == Structural requirements for Document description and Document object

  test '5.6.1 (O)' do
    # It must be possible for a Simplified record to consist of no, one or
    # several Document descriptions and a Document description must be included
    # in one or more Simplified records.
    #
    # These records can be linked to files which belong to different series and
    # fonds.

    assert_has_many :record, :document_links
    assert_belongs_to :document_link, :document_description
    assert_belongs_to :document_link, :record
    assert_belongs_to :document_description, :document_link

    assert_has_many :record, :document_descriptions # through-relation
    assert_has_one :document_description, :record # through-relation
  end

  test '5.6.2 (O)' do
    # It must be possible to divide Document description into different types.
    NOT_YET_IMPLEMENTED
  end

  test '5.6.3 (O)' do
    # A Document description must have one or more Document objects and a
    # Document object can be included in no or one Document description.

    assert_has_many :document_descriptions, :document_objects, as: :documentable
    assert_belongs_to :document_object, :documentable

    NOT_YET_IMPLEMENTED
  end

  test '5.6.4 (B)' do
    # If Document description is not used, Document object must belong to (only)
    # one Simplified record and a Simplified record can contain no, one or
    # several Document objects.

    # REMARK: This is outlined in the model via an EITHER/OR constraint.
    # REMARK: Only relevant for certain task systems.

    assert_has_many :record, :document_objects, as: :documentable
    assert_belongs_to :document_object, :documentable

    NOT_YET_IMPLEMENTED
  end

  test '5.6.5 (V)' do
    # It must be possible for a document description for a physical document
    # (e.g. paper) to have a reference to a storage location for the document.

    # REMARK: For physical fonds.
    NOT_YET_IMPLEMENTED
  end

  test '5.6.6 (O)' do
    # It must be possible for a Document object that is linked to the same
    # document description to refer to different versions of the document.

    document_description = FactoryGirl.create(:document_description)
    FactoryGirl.create(:document_object, document_description: document_description, version: '1.0')
    FactoryGirl.create(:document_object, document_description: document_description, version: '1.1')

    assert document_description.document_objects.count == 2
    assert document_description.document_objects.map(&:version) == ['1.0', '1.1']
  end

  test '5.6.7 (B)' do
    # It must be possible for a Document object that is linked to the same
    # document description to refer to different variants of a document.

    document_description = FactoryGirl.create(:document_description)
    FactoryGirl.create(:document_object, document_description: document_description, variant: 'English')
    FactoryGirl.create(:document_object, document_description: document_description, variant: 'Norwegian')

    assert document_description.document_objects.count == 2
    assert document_description.document_objects.map(&:variant) == ['English', 'Norwegian']
  end

  test '5.6.8 (O)' do
    # It must be possible for a Document object that is linked to the same
    # document description to refer to the same document stored in different
    # formats.

    document_description = FactoryGirl.create(:document_description)
    FactoryGirl.create(:document_object, document_description: document_description, format: 'PDF')
    FactoryGirl.create(:document_object, document_description: document_description, format: 'DOCX')

    assert document_description.document_objects.count == 2
    assert document_description.document_objects.map(&:format) == ['PDF', 'DOCX']
  end

  # == Functional requirements for Document description and Document object

  test '5.6.9 (O)' do
    # There must be functions which, on creation of a new document, link the
    # new document to a Document description.
    NOT_YET_IMPLEMENTED
  end

  test '5.6.10 (O)' do
    # It must be possible to create a Document description without an
    # electronic document.
    NOT_YET_IMPLEMENTED
  end

  test '5.6.11 (O)' do
    # There must be a function/service for archiving one or more
    # versions/variants/formats of a document.
    NOT_YET_IMPLEMENTED
  end

  test '5.6.12 (O)' do
    # It must not be possible to delete an archived document. However, it must
    # be possible to delete older versions of the document.
    NOT_YET_IMPLEMENTED
  end

end
