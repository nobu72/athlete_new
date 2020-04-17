class Post < ApplicationRecord
  mount_uploader :video, VideoUploader
  has_many :comments
  # belongs_to :category
  # accepts_nested_attributes_for :category
  validates :text,:video, :presence => true
end
