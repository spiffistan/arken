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
    NOT_YET_IMPLEMENTED
  end

  test '5.5.2 (O)' do
    # If the File level is used, a Simplified record must belong to (only) one
    # Basic file and a Basic file can contain no, one or several Simplified
    # records.

    assert Filing.reflect_on_association(:records).macro == :has_many
    assert Record.reflect_on_association(:filing).macro == :belongs_to

    filing = FactoryGirl.create(:filing)

    assert filing.records.count == 0

    record_a = FactoryGirl.create(:record, filing: filing)
    record_b = FactoryGirl.create(:record, filing: filing)

    assert filing.records.count == 2

    series = FactoryGirl.create(:series)

    assert_raise(ActiveRecord::RecordInvalid) { record_a.update_attributes(series: series) }
    assert_raise(ActiveRecord::RecordInvalid) { record_b.update_attributes(series: series) }

    assert_nil record_a.series
    assert_nil record_b.series
  end

  test '5.5.3 (B)' do
    # If the File level is not used, a Simplified record must belong to (only)
    # one Series and a Series can contain no, one or several Simplified records.

    # REMARK: This is outlined in the model via an EITHER/OR constraint.
    # REMARK: Only relevant for certain task systems.

    assert Series.reflect_on_association(:records).macro == :has_many
    assert Record.reflect_on_association(:series).macro == :belongs_to

    series = FactoryGirl.create(:series)

    assert series.records.count == 0

    record_a = FactoryGirl.create(:record, series: series)
    record_b = FactoryGirl.create(:record, series: series)

    assert series.records.count == 2

    filing = FactoryGirl.create(:filing)

    assert_raise(ActiveRecord::RecordInvalid) { record_a.update_attributes(filing: filing) }
    assert_raise(ActiveRecord::RecordInvalid) { record_b.update_attributes(filing: filing) }

    assert_nil record_a.filing
    assert_nil record_b.filing
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

    assert Record.reflect_on_association(:document_descriptions).macro == :has_many
    assert DocumentDescription.reflect_on_association(:record).macro == :belongs_to

    record = FactoryGirl.create(:record)

    assert record.document_descriptions.count == 0

    FactoryGirl.create(:document_description, record: record)
    FactoryGirl.create(:document_description, record: record)

    assert series.document_descriptions.count == 2
  end

  test '5.5.6 (O)' do
    # It must be possible to expand a Simplified record to a Basic record.

    # REMARK: As a minimum requirement, all task systems must contain metadata
    #         for Simplified records + Basic records.
    NOT_YET_IMPLEMENTED
  end

  test '5.5.7 (B)' do
    # It must be possible to expand a Basic record to a Registry entry.
    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.5.8 (B)' do
    # It must be possible to define a registry entry as being of different types
    # ("Noark document type").

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.5.9 (?)' do
    # NOTE: EMPTY SPEC
    DEPRECATED
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
