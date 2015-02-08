require 'test_helper'

class RecordRequirementsTest < ActiveSupport::TestCase

  # NOTE: 'Class' here is implemented as 'Classification'

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
    NOT_YET_IMPLEMENTED
  end

  test '5.5.3 (B)' do
    # If the File level is not used, a Simplified record must belong to (only)
    # one Series and a Series can contain no, one or several Simplified records.

    # REMARK: This is outlined in the model via an EITHER/OR constraint.
    # REMARK: Only relevant for certain task systems.
    NOT_YET_IMPLEMENTED
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
    NOT_YET_IMPLEMENTED
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
    NOT_YET_IMPLEMENTED
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
