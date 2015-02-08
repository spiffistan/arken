require 'test_helper'

class ConversionRequirementsTest < ActiveSupport::TestCase

  test '5.13.12 (B)' do
    # There must be a service/function which enables registry administrators to
    # specify which document formats are defined as archival formats.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.13 (B)' do
    # There must be a service/function which enables registry administrators to
    # set up rules for when (which statuses) archival documents must be
    # converted to archival format.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.14 (B)' do
    # It must be possible to specify parameters to determine whether documents
    # should be converted to archival format when the status of document
    # description is set to “Document has been finalised”.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.15 (V)' do
    # It must be possible to specify parameters to determine whether all or
    # specifically marked versions should be converted to archival format.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.16 (B)' do
    # There must be a service/function and reporting for file format testing of
    # the documents that are stored in the core. The report should give an
    # overview of the files, records and/or document descriptions that do not
    # contain documents stored in an approved archival format.
    NOT_YET_IMPLEMENTED
  end

end
