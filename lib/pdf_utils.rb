module PDFUtils

  # Converts a PDF document to a PDF/A document using Ghostscript
  #
  # @param pdf_path [String] The path to the PDF file
  # @return [String] The path to the PDF/A file
  def convert_to_pdfa(pdf_path)

    pdfa_path = pdf_path << '.pdfa'

    fail "Cannot find file at #{pdf_path}!" unless File.exist? pdf_path
    fail "File not PDF format at #{pdf_path}!" unless MIME::Types.type_for(pdf_path).first.content_type.start_with == 'application/pdf'

    system <<-CMD
      gs -dPDFA -dBATCH -dNOPAUSE -dUseCIEColor -sProcessColorModel=DeviceCMYK \
      -sDEVICE=pdfwrite -sPDFACompatibilityPolicy=1 \
      -sOutputFile=#{pdfa_path} #{pdf_path}
    CMD

    fail "Could not convert file to PDF/A: ghostscript error #{$?}" unless $? == 0
    fail "Could find PDF/A file at #{pdfa_path}!" unless File.exist? pdfa_path

    File.rename pdfa_path pdf_path

    pdf_path
end
