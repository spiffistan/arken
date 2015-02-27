require 'test_helper'

class TransferRequirementsTest < ActiveSupport::TestCase
  # REMARK: Obligatory where transfer to an archive repository may be relevant.

  test '5.12.1 (B)' do
    # It must be possible to produce transfer exports consisting of metadata and
    # documents.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.2 (B)' do
    # The transfer export must constitute a Submission Information Package, as
    # defined in ISO 14571 OAIS.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.3 (B)' do
    # The format of the metadata component of the transfer export must be XML
    # (XML 1.0).
    NOT_YET_IMPLEMENTED
  end

  test '5.12.4 (B)' do
    # The character set for the metadata element of the transfer export must be
    # UTF-8.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.5 (B)' do
    # Metadata elements that do not have a value must be omitted from the
    # transfer export. In other words, the export must not contain empty
    # elements with only start and end tags.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.6 (B)' do
    # The structure and content of the metadata components of the transfer
    # export must follow the National Archival Services of Norway's XML form for
    # transfer from Noark 5 cores (separate appendix).
    NOT_YET_IMPLEMENTED
  end

  test '5.12.7 (V)' do
    # Alphanumeric values in the transfer export must be represented using an
    # XML Form - data type string.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.8 (B)' do
    # Dates without a time in the transfer export must be represented using an
    # XML Form - data type date.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.9 (B)' do
    # Dates with a time in the transfer export must be represented using an XML
    # Form - data type dateTime.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.10 (V)' do
    # The format of documents in the transfer export must be one of the archival
    # formats defined in the Regulation pursuant to the Archives Act of 1
    # December 1999 No. 1566 concerning supplementary technical and archival
    # provisions regarding the handling of public fonds, Chapter VIII.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.11 (B)' do
    # The organisation of the files in the transfer export must follow the
    # Regulation pursuant to the Archives Act of 1 December 1999 No. 1566
    # concerning supplementary technical and archival provisions regarding the
    # handling of public fonds, Chapter VIII.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.12 (B)' do
    # A transfer export from electronic case records must consist of all
    # metadata marked 'To be transferred' and all documents in archival format
    # in a finalised series.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.13 (B)' do
    # A transfer export from physical case records must consist of all metadata
    # marked 'To be transferred' in a finalised series.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.14 (B)' do
    # All archived document versions in the finalised series must be included
    # in the export.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.15 (V)' do
    # All archived document variants in the finalised series must be included
    # in the export.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.16 (B)' do
    # Documents that have been disposed of when the export is produced must
    # not be included. However, metadata concerning discarded documents down
    # to document description level must be included.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.17 (V)' do
    # It should be possible to produce a transfer export based on a start date
    # and end date.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.18 (B)' do
    # Each document in archival format must be exported as a file in the
    # transfer export. Different document versions and document variants are
    # exported as separate files.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.19 (B)' do
    # For each document, there must be a document object that contains a unique
    # reference to the document file.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.20 (B)' do
    # The document object must contain a checksum that is generated on the basis
    # of the content of the associated document. The algorithm that was used to
    # generate the checksum must also be documented.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.21 (B)' do
    # A checksum must also be generated for all metadata in the transfer export.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.22 (B)' do
    # Metadata for the entire fonds structure must be exported as a file. If
    # this file becomes very large, the XML form for export will open as several
    # files.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.23 (B)' do
    # The change log must be exported as a separate file.
    NOT_YET_IMPLEMENTED
  end

  test '5.12.24 (B)' do
    # Public registries (section 4.3.6.2) and ongoing registries (ap. 4.3.6.3)
    # must be included in the transfer. These reports must be selected within
    # the same time period as fondsperiodStartDate and fondsperiodEndDate in the
    # finalised series.
    NOT_YET_IMPLEMENTED
  end
end
