class Service < ApplicationRecord
  has_many :user_services
  validates :name, :photo_url, :category, presence: true
  validates :category, inclusion: { in: ["Streaming", "Media", "Video Games", "Music", "Professional", "VPN"] }
end
