class FileUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "archive/#{model.id}"
  end

  process :convert_to_pdfa, if: :pdf?

  def convert_to_pdfa
    PDFUtils.convert_to_pdfa(current_path)
  end

  def pdf?(new_file)
    return false if new_file.try(:content_type).nil?
    new_file.content_type.start_with?('application/pdf')
  end

end
