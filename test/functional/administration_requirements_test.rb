require 'test_helper'

class AdministrationRequirementsTest < ActiveSupport::TestCase

  test '5.13.1 (O)' do
    # There must be a service/function for administration of the core.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.2 (O)' do
    # At least one user must be defined as a registry administrator, who can
    # explicitly log on to the Noark 5 core in order to alter the configuration
    # and global parameters.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.3 (O)' do
    # There must be a service/function for creating, editing and deleting fonds
    # units (fonds, series, classification system, class, file, record, document
    # description and document object) and associated metadata.
    # Such records must be logged.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.4 (O)' do
    # Fonds and the fonds‟ metadata must only be created through the
    # Administrator function for Noark 5 core.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.5 (O)' do
    # A Subrecord must only be defined and altered through the Administrator
    # function for Noark 5 core.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.6 (O)' do
    # A series and the series's metadata must only be created through the
    # Administrator function for Noark 5 core.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.7 (O)' do
    # A Classification system and the classification system's metadata must
    # only be created and altered through the Administrator function for Noark 5
    # core.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.8 (O)' do
    # There must be a service/function which enables the registry administrator
    # to go beyond the role-based access restrictions that are defined in the
    # solution.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.9 (V)' do
    # It should be possible to use parameters to specify that the status
    # "Document has been finalised" is to be automatically set to Document
    # description in connection with other statuses of File or Record.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.10 (O)' do
    # It must be possible to specify parameters to ensure that only authorised
    # units, roles or people have the right to archive a new version of a
    # document on a Record with the status “Dispatched”, “Registered” or
    # “Finalised”.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.11 (O)' do
    # It must be possible to specify parameters to ensure that only authorised
    # roles, units and people can delete inactive versions, variants and formats
    # of a document.
    NOT_YET_IMPLEMENTED
  end


end
