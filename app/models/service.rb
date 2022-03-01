class Service < ApplicationRecord
  has_many :user_services
  validates :name, :photo_url, :type, presence: true
  validates :type, inclusion: { in: ["Streaming", "Media", "Video Games", "Music", "Professional", "VPN"] }
end
