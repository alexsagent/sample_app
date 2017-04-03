class Message < ActiveRecord::Base

  has_attached_file :image
  do_not_validate_attachment_file_type :image
  default_scope -> { order('created_at DESC') }
end
