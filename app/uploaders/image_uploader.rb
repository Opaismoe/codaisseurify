class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager
    resize_to_fill(300, 300)
    cloudinary_transformation :quality => 80
  end
  version :thumbnail_show do
    eager
    resize_to_fill(500, 500)
    cloudinary_transformation :quality => 80
  end
end
