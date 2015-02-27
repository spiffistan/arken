require 'test_helper'

class DeletionRequirementsTest < ActiveSupport::TestCase
  test '5.13.17 (O)' do
    # Authorised users must be able to delete an archived inactive document
    # version. It must not be possible to delete the most recent, final version.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.18 (O)' do
    # It must be possible to search for and retrieve documents that have been
    # archived in several versions.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.19 (V)' do
    # It should be possible to carry out the deletion of many inactive document
    # versions simultaneously, e.g. all inactive document versions that have
    # been found following a search.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.20 (O)' do
    # Deletion of archived inactive document versions must be logged.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.21 (O)' do
    # Authorised users must be able to delete an archived document variant. It
    # must not be possible to delete the original document.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.22 (O)' do
    # It must be possible to search for and retrieve archived document variants.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.23 (V)' do
    # It should be possible to delete many document variants simultaneously,
    # e.g. all document variants that have been found following a search.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.24 (O)' do
    # Deletion of archived document variants must be logged.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.25 (O)' do
    # It must be possible to delete an archived document in production format
    # if the document has been converted to archival format. It must not be
    # possible to delete the document in archival format.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.26 (O)' do
    # It must be possible to search for and retrieve documents archived in
    # production format.
    NOT_YET_IMPLEMENTED
  end

  test '5.13.27 (V)' do
    # It should be possible to delete many production formats simultaneously,
    # e.g. all production formats variants that have been found following a search.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.28 (O)' do
    # Deletion of archived production formats must be logged.
    NOT_YET_IMPLEMENTED
  end
end
