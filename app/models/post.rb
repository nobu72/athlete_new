class Post < ApplicationRecord
  mount_uploader :video, VideoUploader
  
  belongs_to :category
  accepts_nested_attributes_for :category
end
