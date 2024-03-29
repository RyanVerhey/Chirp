# encoding: utf-8

class FoodImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process :resize_to_fit => [300, 300]

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end



end
