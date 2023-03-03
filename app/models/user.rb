class User < ApplicationRecord
    has_many :dictators, dependent: :delete_all
    has_many :favourites, dependent: :delete_all
    has_many :sanctions, dependent: :delete_all
    has_many :comments, dependent: :delete_all
    has_many :sent_messages, dependent: :delete_all, class_name: "Message", foreign_key: "sender_id"
    has_many :received_messages, dependent: :delete_all, class_name: "Message", foreign_key: "receiver_id"
    has_many :unread_messages, -> { where(read: false) }, class_name: 'Message', foreign_key: 'receiver_id', dependent: :delete_all

    validates_confirmation_of :password
    has_secure_password
    validates :email, :uniqueness => true, :presence => true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9\.]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+\z/, message: "must be in the format of 'user@example.com'" }
    validates :username, :uniqueness => true, :presence => true, uniqueness: { case_sensitive: false }
    validates :username, length: { in: 3..15 }
    validates :username, format: { with: /\A[a-zA-Z0-9]+\z/, message: "can only contain letters and numbers" }
    validates_format_of :username, with: /[a-zA-Z]+/, message: "must contain at least one letter"
    validate :pasword_must_not_be_blank
    


    def pasword_must_not_be_blank
      if password.blank?
        errors.add(:password, "must not be blank")
      end
    end

    
end
