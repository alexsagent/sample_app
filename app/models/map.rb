class Map < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
