class User < ApplicationRecord
    has_many :dictators, dependent: :delete_all
    has_many :favourites, dependent: :delete_all
    has_many :sanctions, dependent: :delete_all
    has_many :comments
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_many :received_messages, class_name: "Message", foreign_key: "receiver_id"
    has_many :unread_messages, -> { where(read: false) }, class_name: 'Message', foreign_key: 'receiver_id'

    validates_confirmation_of :password
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    validates :username, :uniqueness => true, :presence => true
    validates_format_of :username, with: /[a-zA-Z]+/, message: "must contain at least one letter"
    validate :pasword_must_not_be_blank
    validates :username, length: { in: 3..15 }
    
  def pasword_must_not_be_blank
    if password.blank?
      errors.add(:password, "must not be blank")
    end
  end

    
end
