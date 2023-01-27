class User < ApplicationRecord
    validates_confirmation_of :password
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    validates :username, :uniqueness => true, :presence => true
    has_many :dictators, dependent: :delete_all
    has_many :favourites, dependent: :delete_all
    has_many :sanctions, dependent: :delete_all
    has_many :comments
    validates_format_of :username, with: /[a-zA-Z]+/, message: "Username must contain at least one letter"
    validate :pasword_must_not_be_blank

  def pasword_must_not_be_blank
    if password.blank?
      errors.add(:password, "must not be blank")
    end
  end

    
end
