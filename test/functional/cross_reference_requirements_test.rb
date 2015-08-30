require 'test_helper'

class CrossReferenceRequirementsTest < ActiveSupport::TestCase
  # == Structural requirements for Cross-reference

  test '5.7.5 (V)' do
    # From one Class, it should be possible to refer to one or several other
    # Classes.

    classification_a = create(:classification)
    classification_b = create(:classification)
    classification_c = create(:classification)

    classification_a.add_reference(classification_b)
    classification_a.add_reference(classification_c)

    assert classification_a.cross_references_in.count == 0
    assert classification_a.cross_references_out.count == 2
    assert classification_a.cross_references_out.map(&:to_id) == [classification_b.id, classification_c.id]

    assert classification_b.cross_references_in.count == 1
    assert classification_b.cross_references_in.first.from_id == classification_a.id

    assert classification_c.cross_references_in.count == 1
    assert classification_c.cross_references_in.first.from_id == classification_a.id
  end

  test '5.7.6 (V)' do
    # It should be possible to refer to a Class from one or several other
    # Classes.
    skip
  end

  test '5.7.7 (B)' do
    # From one Basic file, it should be possible to refer to one or several
    # other Basic files.

    # REMARK: Obligatory for case records, relevant to many task systems.

    filing_a = create(:filing)
    filing_b = create(:filing)
    filing_c = create(:filing)

    filing_a.add_reference(filing_b)
    filing_a.add_reference(filing_c)

    assert filing_a.cross_references_in.count == 0
    assert filing_a.cross_references_out.count == 2
    assert filing_a.cross_references_out.map(&:to_id) == [filing_b.id, filing_c.id]

    assert filing_b.cross_references_in.count == 1
    assert filing_b.cross_references_in.first.from_id == filing_a.id

    assert filing_c.cross_references_in.count == 1
    assert filing_c.cross_references_in.first.from_id == filing_a.id
  end

  test '5.7.8 (B)' do
    # It should be possible to refer to a Basic file from one or several other
    # Basic files.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  test '5.7.9 (B)' do
    # From one Basic file, it should be possible to refer to one or more Basic
    # records.

    # REMARK: Obligatory for case records, relevant to many task systems.

    filing = create(:filing)
    record_a = create(:basic_record, :for_filing)
    record_b = create(:basic_record, :for_filing)

    filing.add_reference(record_a)
    filing.add_reference(record_b)

    assert filing.cross_references_in.count == 0
    assert filing.cross_references_out.count == 2
    assert filing.cross_references_out.map(&:to_id) == [record_a.id, record_b.id]

    assert record_a.cross_references_in.count == 1
    assert record_a.cross_references_in.first.from_id == filing.id

    assert record_b.cross_references_in.count == 1
    assert record_b.cross_references_in.first.from_id == filing.id
  end

  test '5.7.10 (B)' do
    # It should be possible to refer to a Basic file from one or several other
    # Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  test '5.7.11 (B)' do
    # From one Basic record, it should be possible to refer to one or several
    # other Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.

    record_a = create(:basic_record, :for_filing)
    record_b = create(:basic_record, :for_filing)
    record_c = create(:basic_record, :for_filing)

    record_a.add_reference(record_b)
    record_a.add_reference(record_c)

    assert record_a.cross_references_in.count == 0
    assert record_a.cross_references_out.count == 2
    assert record_a.cross_references_out.map(&:to_id) == [record_b.id, record_c.id]

    assert record_b.cross_references_in.count == 1
    assert record_b.cross_references_in.first.from_id == record_a.id

    assert record_c.cross_references_in.count == 1
    assert record_c.cross_references_in.first.from_id == record_a.id
  end

  test '5.7.12 (B)' do
    # It should be possible to refer to a Basic record from one or several other
    #  Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  # == Functional requirements for Cross-reference

  test '5.7.13 (O)' do
    # There must be a service/function that can store, retrieve, alter and
    # delete a Cross-reference between:
    #  - Basic files
    #  - Basic records
    # or to references between them.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.14 (V)' do
    # There should be a service/function that can store, retrieve, alter and
    # delete a Cross-reference between Classes.
    NOT_YET_IMPLEMENTED
  end
end
