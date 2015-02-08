require 'test_helper'

class PreservationAndDisposalRequirementsTest < ActiveSupport::TestCase

  test '5.10.1 (O)' do
    # It must be possible for a Series to have registered no or one Disposal
    # decision and a Disposal decision can be included in no, one or several
    # Series.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.2 (B)' do
    # It must be possible for a Class to have registered no or one Disposal
    # decision and a Disposal decision can be included in no, one or several
    # Classes.

    # REMARK: Obligatory for disposal beyond series.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.3 (B)' do
    # It must be possible for a Basic file to have registered no or one Disposal
    # decision and a Disposal decision can be included in no, one or several
    # Basic files.

    # REMARK: Obligatory for disposal beyond class.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.4 (B)' do
    # It must be possible for a Simplified record to have registered no or one
    # Disposal decision and a Disposal decision can be included in no, one or
    # several Simplified records.

    # REMARK: Obligatory for disposal beyond basic file.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.5 (B)' do
    # It must be possible for a Document description to have registered no or
    # one Disposal decision and a Disposal decision can be included in no, one
    # or several Document descriptions.

    # REMARK: Obligatory for disposal decisions beyond simplified record.
    NOT_YET_IMPLEMENTED
  end

  # ==

  test '5.10.6 (B)' do
    # There must be a service/function for updating disposal decisions, disposal
    # authority and preservation time for a Class.

    # REMARK: Obligatory if requirements 5.10.2 – 5.10.5 are met.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.7 (B)' do
    # It must be possible for metadata concerning preservation and disposal for
    # a Class to be passed on to File, Document description and Document object.

    # REMARK: Obligatory if requirements 5.10.2 – 5.10.5 are met.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.8 (B)' do
    # There must be a service/function for updating disposal decisions, disposal
    # authority and preservation time for a Series.

    # REMARK: Obligatory if requirements 5.10.2 – 5.10.5 are met.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.9 (B)' do
    # It must be possible for metadata concerning preservation and disposal for
    # a Series to be passed on to File, Document description and Document object.

    # REMARK: Obligatory if requirements 5.10.2 – 5.10.5 are met.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.10 (B)' do
    # If the inheritance of metadata concerning preservation and disposal is to
    # take place from series, this must override the inheritance of metadata
    # from the classes.

    # REMARK: Obligatory for function for inheritance of disposal code.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.11 (B)' do
    # There must be a service/function for registering a disposal decision for a
    # File, Record or Document description.
    #
    # The disposal decision must consist of the following obligatory values:
    #   1. To be preserved
    #   2. To be disposed of
    #   3. To be assessed later
    # Other values can be added.

    # REMARK: Obligatory for application of disposal decisions beyond series and
    # class.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.12 (B)' do
    # It must be possible to manually register disposal decisions, disposal
    # authority and preservation time for a File, Record or Document description.

    # REMARK: Obligatory if 5.10.11 is fulfilled.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.13 (B)' do
    # It must be possible for the preservation date for a File, Record or
    # Document description to be calculated automatically on the basis of
    # preservation time and the date on which the file was finalised.

    # REMARK: Obligatory if 5.10.11 is fulfilled.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.14 (V)' do
    # Other rules for calculating preservation date should be possible.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.15 (B)' do
    # It must also be possible to register the preservation date for a File,
    # Record or Document description manually. Preservation time will then not
    # be obligatory.

    # REMARK: Obligatory if 5.10.11 is fulfilled.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.16 (B)' do
    # It must be possible to deactivate the function for inheritance from
    # classes and series, so that metadata concerning preservation and disposal
    # is not passed on to underlying files.

    # REMARK: Obligatory for function for inheritance of disposal code.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.17 (B)' do
    # It must be possible to specify that the inheritance of metadata concerning
    # preservation and disposal must also extend down to record and document
    # description.

    # REMARK: Obligatory for function for inheritance of disposal code.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.18 (B)' do
    # It must be possible for metadata concerning preservation and disposal that
    # are inherited from an archive object to all underlying archive objects to
    # be overwritten.

    # REMARK: Obligatory for function for inheritance of disposal code.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.19 (B)' do
    # If an archive object is set to disposal and then changed back to
    # preservation, all overlying archive objects in the hierarchy (in an
    # immediately ascending line) must be altered accordingly.

    # REMARK: Obligatory for function for inheritance of disposal code.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.20 (V)' do
    # There should be a service/function that automatically links a particular
    # type of record or document descriptions to a preservation and disposal
    # decision.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.21 (B)' do
    # Metadata concerning preservation and disposal will then be passed on to
    # all created records or document descriptions of the same type.

    # REMARK: Obligatory if 5.10.20 is fulfilled.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.22 (O)' do
    # It must be possible to bring up an overview of documents that are to be
    # disposed of after a specific time. It must be possible to limit such an
    # overview to a small selection of documents.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.23 (O)' do
    # It must be possible to bring up an overview of documents that are to be
    # reassessed for preservation or disposal after a specific time. It must be
    # possible to limit such an overview to a small selection of documents.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.24 (O)' do
    # The overview must contain the most important metadata for the documents,
    # including metadata for preservation and disposal.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.25 (V)' do
    # It should be possible to open a document for the presentation of content
    # directly from this overview.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.26 (V)' do
    # Authorised users should be able to alter metadata for preservation and
    # disposal for the individual documents directly from the overview.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.27 (B)' do
    # There must be a function for disposing of all documents that have the
    # value "To be disposed of" as the disposal decision and where the
    # preservation date is older than today's date. It must be possible to limit
    # such a function to a small selection of documents.

    # REMARK: Obligatory in solutions where disposal is to take place and when
    #         necessary to distinguish between disposable and non-disposable
    #         documents.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.28 (O)' do
    # It must not be possible to set the disposal decision "To be disposed of"
    # for a file that has been registered as a precedence decision.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.29 (B)' do
    # It must be possible for the disposal to be carried out automatically for
    # all selected documents, but it must also be possible to ask to be asked
    # whether disposal is to be carried out for every single document.

    # REMARK: Obligatory when 5.10.27 is met.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.30 (O)' do
    # Only authorised users can start a function for the disposal of documents.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.31 (B)' do
    # All versions, variants and formats of the document must be covered by the
    # disposal.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.32 (O)' do
    # Disposal must involve all metadata concerning the document object being
    # deleted. The document itself must be deleted from the file system if the
    # document (the document description) is not linked to other records.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.33 (V)' do
    # The function for disposal should be executed in two stages, so that during
    # the first stage it is possible to restore the documents that have been
    # disposed of. It must be possible for the final deletion of document
    # objects and documents to take place at a later time.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.34 (O)' do
    # Metadata concerning the document down to document description should as a
    # general rule not be deleted even if the document is disposed of.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.35 (O)' do
    # For every document that is disposed of, the date of disposal and the name
    # of the person who performed the disposal must be logged at document
    # description level.
    NOT_YET_IMPLEMENTED
  end

  test '5.10.36 (O)' do
    # It must be possible to specify that both the documents and the associated
    # metadata up to file level are to be deleted when the disposal is effected.
    NOT_YET_IMPLEMENTED
  end

end
