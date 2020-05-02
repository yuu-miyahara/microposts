class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favolites
  
  validates :content, presence: true, length: { maximum: 255 }
end
