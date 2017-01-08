class User < ActiveRecord::Base
  has_and_belongs_to_many :books
  has_many :lists

  has_secure_password

  validates_presence_of :password, on: :create

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}

  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end
end
