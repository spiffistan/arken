require 'test_helper'

class SeriesRequirementsTest < ActiveSupport::TestCase

  test '5.2.13 (B)' do
    # A Series can have registered either no or one preferred Classification
    # system and a Classification system can form part of no, one or several
    # Series(s).

    # REMARK: Obligatory for case records.
    NOT_YET_IMPLEMENTED
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
    NOT_YET_IMPLEMENTED
  end

  test '5.2.15 (O)' do
    # A Series can have registered no or one Preservation and disposal and a
    # Preservation and disposal can form part of no, one or more Series(s).

    # NOTE: Same remarks as test 5.2.14.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.16 (O)' do
    # A Series can be linked to (contain) no, one or more Files.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.17 (O)' do
    # When a service/function deletes a Series, this must be logged.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.18 (O)' do
    # There must be a service/function for updating the primary Classification
    # system for a Series. (referenceClassificationsystem)
    NOT_YET_IMPLEMENTED
  end

  test '5.2.19 (O)' do
    # If Series is registered as finalised (finalisedDate is set), it must not
    # be possible to add more associated Files or Records.
    NOT_YET_IMPLEMENTED
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

    # REMARK: ￼Obligatory for mixed physical and electronic records.
    NOT_YET_IMPLEMENTED
  end


end
