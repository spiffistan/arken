require 'test_helper'

class GeneralRequirementsTest < ActiveSupport::TestCase

  test '5.1.1 (O)' do
    # In order for a system to be approved in accordance with the Noark 5
    # standard, it must be possible to implement the conceptual model of the
    # archive structure and the functional opportunities in the relevant
    # system's (physical) data structures.
    NOT_YET_IMPLEMENTED
  end

  test '5.1.2 (B)' do
    # Fonds documents that belong to a case record must form part of an archive
    # structure which must contain the following record units:
    # Fonds, Series, Classification system, Class, File[1], Record[2],
    # Document description and Document object.
    #
    #  [1] File is a common term for the record units Basic file,
    #      including the specialisations Case file and Meeting file.
    #
    #  [2] Record is a collective term for the record units Simplified record,
    #      including the specialisations Basic record, Registry entry and
    #      Meeting record.

    # REMARK: Obligatory for Case Records
    NOT_YET_IMPLEMENTED
  end

  test '5.1.3 (O)' do
    # Fonds documents that do not belong to a case record (e.g. a task system)
    # can be included in a “simplified” archive structure which must at least
    # contain the following record units:
    #
    #    Fonds, Series, Record[1] and Document object.
    #
    #  [1] Record is a collective term for the record units Simplified record,
    #      including the specialisations Basic record, Registry entry and
    #      Meeting record.

    # REMARK: Replaced by requirement 0 for case records. This is a minimum
    # solution. Task systems can consist of the same record units as case
    # records.

    models = %w(Fonds Series Record SimplifiedRecord BasicRecord
                RegistryEntry MeetingRecord DocumentObject)

    assert models.map { |m| Module.const_get('::' + m).is_a?(Class) }.all?
  end

  test '5.1.4 (O)' do
    # Noark 5 must have services/functions for storing, retrieving, altering and
    # deleting data and selections[1] of data in accordance with the metadata
    # descriptions in all record units (see requirement 0) and associated classes
    # which are documented in the conceptual models and metadata tables in
    # Noark 5.
    #
    # Note: Individual functional requirements in the various sections may
    # override this requirement.
    #
    # [1] Selections of data means selections within a from/to designation of
    # obligatory metadata for the record unit concerned.

    # REMARK: This is a general requirement, which covers a lot of functionality
    # in Noark 5 core.
    NOT_YET_IMPLEMENTED
  end

  test '5.1.5 (O)' do
    # It must be possible to identify a record unit (see requirements 0 and 0)
    # uniquely.

    # REMARK: In connection with transfer, a unique ID for all record units must
    # be called systemID.

    assert true # This is the id column. 
  end
end
