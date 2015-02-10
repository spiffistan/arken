require 'test_helper'

class FondsRequirementsTest < ActiveSupport::TestCase

  test '5.2.1 (O)' do
    # It must be possible for a Noark 5 solution to consist of one or more
    # independent Fonds.
    Fonds.create! && Fonds.create!
    assert Fonds.count == 2
  end

  test '5.2.2 (O)' do
    # It must be possible to create no, one or more Fonds for a Fonds creator
    # (activity) and it must be possible to specify that several fonds creators
    # together create a Fonds entity.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.3 (O)' do
    # A Fonds entity must consist of one or more fonds sections and a Fonds
    # section must form part of (only) one Fonds entity.

    # NOTE: 'Fonds section' seems to be 'Series'
    NOT_YET_IMPLEMENTED
  end

  test '5.2.4 (B)' do
    # If a Fonds entity is registered as “Finalised”, it must not be possible
    # to add more underlying Fonds sections.

    # REMARK: Obligatory if fonds status is used.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.5 (O)' do
    # When a service/function deletes an entire Fonds entity with all
    # underlying levels, this must be logged.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.6 (O)' do
    # It must not be possible to alter the date of creation of the Fonds entity.

    f = Fonds.create!
    original_datetime = f.read_attribute_before_type_cast("created_at")

    f.update_attributes!(created_at: DateTime.now)
    new_datetime = Fonds.find(f.id).read_attribute_before_type_cast("created_at")

    assert_equal original_datetime, new_datetime
  end

  test '5.2.7 (O)' do
    # It must not be possible to delete the date of creation of the Fonds entity.

    f = Fonds.create!
    original_datetime = f.read_attribute_before_type_cast("created_at")

    f.update_attributes!(created_at: nil)
    new_datetime = Fonds.find(f.id).read_attribute_before_type_cast("created_at")

    assert_equal original_datetime, new_datetime
  end

  test '5.2.8 (O)' do
    # It must not be possible to delete the date of closure of the Fonds entity.

    f = Fonds.create!
    original_datetime = f.read_attribute_before_type_cast("finalized_at")

    f.update_attributes!(finalized_at: nil)
    new_datetime = Fonds.find(f.id).read_attribute_before_type_cast("finalized_at")

    assert_equal original_datetime, new_datetime
  end

  test '5.2.9 (B)' do
    # It must be possible to define status values for Fonds entities.
    # The following values are recommended:
    #   · Created
    #   · Finalised

    # REMARK: Obligatory for case fonds.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.10 (V)' do
    # It should be possible for a Fonds entity to be subdivided into a hierarchy
    # (outlined in the model by using a self- relation) of Subfonds.
    #
    # REMARK: Using one or more levels under Fonds entity, it should be
    #         possible to represent physical subfonds for example. This may be
    #         relevant for organisations that have fonds physically located in
    #         several different places.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.11 (V)' do
    # The system should have a service/function for specifying a Fonds entity as
    # a Subrecord of a Fonds entity.
    NOT_YET_IMPLEMENTED
  end

  test '5.2.12 (B)' do
    # A Subrecord must only be created and altered through the
    # Administration system for Noark 5.

    # REMARK: Obligatory if subfonds are used.
    # NOTE: Probably means Subfonds instead of Subrecord here.
    NOT_YET_IMPLEMENTED
  end

end
