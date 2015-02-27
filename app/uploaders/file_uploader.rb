class FileUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "archive/#{model.id}"
  end
end
