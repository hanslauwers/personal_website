class ProjectUploader < CarrierWave::Uploader::Base
  storage :aws
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def cache_dir
    "uploads/#{Rails.env}/#{model.class.to_s.underscore}-#{mounted_as}/#{model.id}"
  end
end
