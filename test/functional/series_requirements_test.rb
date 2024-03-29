require 'test_helper'

class SeriesRequirementsTest < ActiveSupport::TestCase
  test '5.2.13 (B)' do
    # A Series can have registered either no or one preferred Classification
    # system and a Classification system can form part of no, one or several
    # Series(s).

    # REMARK: Obligatory for case records.

    assert_has_many :classification_system, :series
    assert_belongs_to :series, :classification_system

    classification_system = create(:classification_system)
    series = create(:series, classification_system: nil)

    assert classification_system.series.count == 0
    assert_nil series.classification_system

    series_a = create(:series, classification_system: classification_system)
    series_b = create(:series, classification_system: classification_system)

    assert_not_nil series_a.classification_system
    assert_not_nil series_b.classification_system
    assert classification_system.series.count == 2
  end

  test '5.2.14 (O)' do
    # A Series can have registered no or one Screening and a Screening can form
    # part of no, one or several Series(s).

    # REMARK: Metadata for Screening are described in section 6.6.1. Metadata
    #         for Preservation and disposal are described in section 5.10. It is
    #         essentially an obligatory requirement that all records systems
    #         have functions for screening and preservation/disposal. However,
    #         this requirement may be omitted for simple systems without such
    #         needs.

    assert_has_many :screening, :series
    assert_belongs_to :series, :screening

    screening = create(:screening)
    series = create(:series)

    assert series.screening.nil?
    assert screening.series.count == 0

    series_a = create(:series, screening: screening)
    series_b = create(:series, screening: screening)

    assert series_a.screening == series_b.screening
    assert screening.series.count == 2
  end

  test '5.2.15 (O)' do
    # A Series can have registered no or one Preservation and disposal and a
    # Preservation and disposal can form part of no, one or more Series(s).

    # NOTE: Same remarks as test 5.2.14.

    assert_has_many :preservation_and_disposal, :series
    assert_belongs_to :series, :preservation_and_disposal

    preservation_and_disposal = create(:preservation_and_disposal)
    series = create(:series)

    assert series.preservation_and_disposal.nil?
    assert preservation_and_disposal.series.count == 0

    series_a = create(:series, preservation_and_disposal: preservation_and_disposal)
    series_b = create(:series, preservation_and_disposal: preservation_and_disposal)

    assert series_a.preservation_and_disposal == series_b.preservation_and_disposal
    assert preservation_and_disposal.series.count == 2
  end

  test '5.2.16 (O)' do
    # A Series can be linked to (contain) no, one or more Files.

    assert_has_many :series, :filings
    assert_belongs_to :filing, :series

    series = create(:series)

    assert series.filings.count == 0

    series.filings << create(:meeting_filing)
    series.filings << create(:meeting_filing)

    assert series.filings.count == 2
  end

  test '5.2.17 (O)' do
    # When a service/function deletes a Series, this must be logged.

    series = create(:series)

    assert series.audits.size == 1

    series.destroy

    assert series.audits.size == 2
  end

  test '5.2.18 (O)' do
    # There must be a service/function for updating the primary Classification
    # system for a Series. (referenceClassificationsystem)
    NOT_YET_IMPLEMENTED
  end

  test '5.2.19 (O)' do
    # If Series is registered as finalised (finalisedDate is set), it must not
    # be possible to add more associated Files or Records.

    series = create(:series, :finalized)

    assert series.records.count == 0
    assert series.filings.count == 0

    assert_raise(ActiveRecord::RecordInvalid) { create(:record, series: series) }
    assert_raise(ActiveRecord::RecordInvalid) { create(:filing, series: series) }

    assert series.records.count == 0
    assert series.filings.count == 0
  end

  test '5.2.20 (B)' do
    # A series must contain information on the status of the records period.
    # Authorised users must be able to alter status values. Obligatory values
    # are:
    #
    #   1. Active period
    #   2. Overlap period
    #   3. Closed period
    #
    # Other values can be used when necessary.

    # REMARK: Obligatory for case records and for all solutions in which
    #         periodisation is performed.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.21 (B)' do
    # A series must contain the date on which the records period starts.

    # REMARK: Obligatory for case records and for all solutions in which
    #         periodisation is performed.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.22 (B)' do
    # A finalised series must contain the date on which the period was closed.

    # REMARK: Obligatory for case records and for all solutions in which
    #         periodisation is performed. Must be assigned a value when the
    #         period is closed.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.23 (B)' do
    # A series must contain information stating whether the associated documents
    # are physical or electronic.

    # REMARK: Obligatory for mixed physical and electronic records.
    NOT_YET_IMPLEMENTED
  end
end
