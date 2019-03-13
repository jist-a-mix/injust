class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :confirmable
extend FriendlyId
friendly_id :username, use: [:slugged, :history]

  validates :username, :uniqueness => {:case_sensitive => false},
  :format => { with: /\A[a-zA-Z0-9]+\Z/ }
validates :slug, presence: true, slug: true, if: :slug_changed?

         after_create :welcome_send
         def welcome_send
  WelcomeMailer.welcome_send(self).deliver_now
  
end
end
