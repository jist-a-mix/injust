class Post < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true
	
	has_many :comments, as: :commentable 
	belongs_to :user
	extend FriendlyId
friendly_id :title, use: [:slugged, :history]
validates :slug, presence: true, slug: true, if: :slug_changed?
end
