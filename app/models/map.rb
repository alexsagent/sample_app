class Map < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :user
  default_scope -> { order('created_at DESC') }

  validates_processing_of :image
  validate :image_size_validation
  #validates :user_id, presence: true
  #validates :name, presence: true, length: { maximum: 150 }
  #validates :image, presence: true
  #validates :cp_number, numericality: {only_integer: true, greater_than_or_equal_to: 2, less_than_or_equal_to: 100}

  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
