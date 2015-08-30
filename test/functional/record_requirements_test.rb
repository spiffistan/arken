require 'test_helper'

class RecordRequirementsTest < ActiveSupport::TestCase
  # NOTE: 'Class' here is implemented as 'Classification'
  # NOTE: 'Basic file' here is implemented as 'Filing'
  # NOTE: 'Simplified record' here is implemented as 'Record'

  # == Structural requirements for Record

  test '5.5.1 (O)' do
    # It must be possible for a Simplified record to be divided into different
    # types.

    # REMARK: In the conceptual model, this is resolved through specialisation,
    #         i.e. expansions for each type.

    assert BasicRecord < Record
    assert RecordEntry < BasicRecord
  end

  test '5.5.2 (O)' do
    # If the File level is used, a Simplified record must belong to (only) one
    # Basic file and a Basic file can contain no, one or several Simplified
    # records.

    assert_has_many :filing, :records
    assert_belongs_to :record, :filing

    filing = create(:filing)

    assert filing.records.count == 0

    record_a = create(:record, :for_filing, filing: filing)
    record_b = create(:record, :for_filing, filing: filing)

    assert filing.records.count == 2

    series = create(:series)

    assert_raise(ActiveRecord::RecordInvalid) { record_a.update_attributes!(series: series) }
    assert_raise(ActiveRecord::RecordInvalid) { record_b.update_attributes!(series: series) }

    assert_nil record_a.reload.series
    assert_nil record_b.reload.series
  end

  test '5.5.3 (B)' do
    # If the File level is not used, a Simplified record must belong to (only)
    # one Series and a Series can contain no, one or several Simplified records.

    # REMARK: This is outlined in the model via an EITHER/OR constraint.
    # REMARK: Only relevant for certain task systems.

    assert_has_many :series, :records
    assert_belongs_to :record, :series

    series = create(:series)

    assert series.records.count == 0

    record_a = create(:record, :for_series, series: series)
    record_b = create(:record, :for_series, series: series)

    assert series.records.count == 2

    filing = create(:filing)

    assert_raise(ActiveRecord::RecordInvalid) { record_a.update_attributes!(filing: filing) }
    assert_raise(ActiveRecord::RecordInvalid) { record_b.update_attributes!(filing: filing) }

    assert_nil record_a.reload.filing
    assert_nil record_b.reload.filing
  end

  test '5.5.4 (B)' do
    # If the File level is not used, a Simplified record must belong to only one
    # Class and a Class can be included in no, one or several Simplified
    # records.

    # REMARK: This is outlined in the model via an EITHER/OR constraint.
    # REMARK: Only relevant for certain task systems.

    NOT_YET_IMPLEMENTED
  end

  test '5.5.5 (O)' do
    # It must be possible for a Simplified record to contain no, one or several
    # Document descriptions and a Document description must be included in one
    # or more Simplified records.

    # REMARK: There may also be some task systems where the document description
    #         level can be omitted. This will typically concern task systems
    #         with automatic document capture, in which only one document is
    #         linked to the record and in which the document is not included in
    #         other fonds.

    assert_has_many :record, :document_links
    assert_has_many :record, :document_descriptions, through: :document_links
    assert_belongs_to :document_link, :record
    assert_belongs_to :document_link, :document_description
    assert_has_one :document_description, :record, through: :document_link

    record = create(:record, :for_filing)

    assert record.document_descriptions.count == 0

    create(:document_description, record: record)
    create(:document_description, record: record)

    assert record.document_descriptions.count == 2
  end

  test '5.5.6 (O)' do
    # It must be possible to expand a Simplified record to a Basic record.

    # REMARK: As a minimum requirement, all task systems must contain metadata
    #         for Simplified records + Basic records.

    record = create(:record, :for_filing)

    assert record.class == Record

    record = record.becomes!(BasicRecord)
    record.save

    assert Record.find(record.id).class == BasicRecord
  end

  test '5.5.7 (B)' do
    # It must be possible to expand a Basic record to a Registry entry.
    # REMARK: Obligatory for case records.

    record = create(:basic_record, :for_filing)

    assert record.class == BasicRecord

    record = record.becomes!(RecordEntry)
    record.save

    assert Record.find(record.id).class == RecordEntry
  end

  test '5.5.8 (B)' do
    # It must be possible to define a registry entry as being of different types
    # ("Noark document type").

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.5.9 (?)' do
    skip
  end

  test '5.5.10 (B)' do
    # A Registry entry must have registered a Case responsibility (i.e.
    # administrative unit, Executive officer and where appropriate a registry
    # management unit) and it must be possible for a Case responsibility to be
    # included in no, one or several Registry entries.

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.5.11 (B)' do
    # A Registry entry must have registered a Client and a Client must be
    # included in (only) one Registry entry.

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  # == Functional requirements for Record

  test '5.5.12 (V)' do
    # There must be a service/function for updating a Registry management unit
    # on a Record (Registry entry).
    NOT_YET_IMPLEMENTED
  end

  test '5.5.13 (O)' do
    # There must be a service/function for updating an Administrative unit and
    # Executive officer on a Record (Registry entry).
    NOT_YET_IMPLEMENTED
  end

  test '5.5.14 (O)' do
    # There must be a service/function for updating a Client on a Registry
    # entry.
    NOT_YET_IMPLEMENTED
  end
end
