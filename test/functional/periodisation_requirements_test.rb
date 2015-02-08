require 'test_helper'

class PeriodisationRequirementsTest < ActiveSupport::TestCase

  test '5.11.1 (O)' do
    # It must be possible for a series to contain a text-based description of
    # the principles to be used in the periodisation.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.2 (O)' do
    # A series must contain references to any predecessors and successors.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.3 (O)' do
    # It must be possible to link newly created files to a series that contains
    # an active fonds period.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.4 (O)' do
    # A series that contains an overlap period must be blocked for the addition
    # of newly created files. However, existing files in an overlap period must
    # be open to new records.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.5 (O)' do
    # If a new record is added to a file that belongs to a series in an overlap
    # period, the file must automatically be transferred to the series‟s successor.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.6 (O)' do
    # A series that contains a closed fonds period must be blocked for the
    # addition of new files. All files must be finalised, so that no records or
    # documents can be added either.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.7 (V)' do
    # It should be possible to finalise a series in an overlap period if it
    # still contains open files.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.8 (O)' do
    # It must be possible to obtain an overview of files that are still open
    # in an overlap period.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.9 (O)' do
    # It must be possible to transfer open files from a series in an overlap
    # period to the series‟s successor.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.10 (V)' do
    # It should be possible to transfer in a single, automated process.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.11 (B)' do
    # It must be possible to move finalised files to a series that contains
    # a closed period.

    # REMARK: Obligatory for function for periodisation
    NOT_YET_IMPLEMENTED
  end

  test '5.11.12 (B)' do
    # It must be possible to move a group of finalised files to a series that
    # contains a closed period in an automated process.

    # REMARK: Obligatory for general case records.
    NOT_YET_IMPLEMENTED
  end

  test '5.11.13 (O)' do
    # If the documents in a series are not electronic (physical), it must also
    # be possible to record the storage location.
    NOT_YET_IMPLEMENTED
  end

end
