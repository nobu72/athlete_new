class Tweet < ApplicationRecord
  validates :text,:date, :presence => true

end
