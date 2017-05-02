class Map < ActiveRecord::Base

  belongs_to :user

  has_attached_file :image,
                    validate_media_type: false,
                    styles: { thumb: ["140x140#", :jpg],
                              original: ['500x500>', :jpg]}
  #do_not_validate_attachment_file_type :image
  validates_attachment :image, presence: true,
                       content_type: { content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

  default_scope -> { order('created_at DESC') }


end
