require 'test_helper'

class RemarkRequirementsTest < ActiveSupport::TestCase

  # == Structural requirements for Remarks

  test '5.7.15 (B)' do
    # A Remark must be included in (belong to) either a Basic file, Basic record
    # or Document description.

    # REMARK: This is modelled using an "either/or"
    #         constraint in the conceptual model.
    # REMARK: Obligatory for case records, relevant to many task systems.

    assert_has_many :filing, :remarks, as: :remarkable
    assert_has_many :basic_record, :remarks, as: :remarkable
    assert_has_many :document_description, :remarks, as: :remarkable
    assert_belongs_to :remark, :remarkable, polymorphic: true
  end

  test '5.7.16 (B)' do
    # It must be possible for a Basic file to be linked to no, one or more
    # Remarks.

    # REMARK: Obligatory for case records, relevant to many task systems.

    filing = FactoryGirl.create(:filing)

    assert filing.remarks.count == 0

    FactoryGirl.create(:remark, remarkable: filing)
    FactoryGirl.create(:remark, remarkable: filing)

    assert filing.remarks.count == 2
  end

  test '5.7.17 (B)' do
    # It must be possible for a Basic record to be linked to no, one or more
    # Remarks.

    # REMARK: Obligatory for case records, relevant to many task systems.

    record = FactoryGirl.create(:record, :for_filing)

    assert record.remarks.count == 0

    FactoryGirl.create(:remark, remarkable: record)
    FactoryGirl.create(:remark, remarkable: record)

    assert record.remarks.count == 2
  end

  # == Functional requirements for Remarks

  test '5.7.18 (B)' do
    # There must be a service/function that can register a Remark to a Basic
    # file or Basic record.

    # REMARK: Obligatory for case records, relevant to many task systems.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.19 (B)' do
    # If more than one remark is linked to  a Basic file or a Basic record, the
    # metadata must be grouped together upon export and exchange.

    # REMARK: Obligatory for case records, relevant to many task systems.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.20 (V)' do
    # It should be possible to freely define types of remarks.
    NOT_YET_IMPLEMENTED
  end

end
