class Service < ApplicationRecord
  has_many :user_services
  has_one_attached :photo
  validates :name, :category, :photo, presence: true
  validates :category, inclusion: { in: ["Streaming", "Media", "Video Games", "Music", "Professional", "VPN"] }
end
