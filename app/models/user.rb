# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string
#  lname           :string
#  username        :string
#  password_digest :string
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :sessions
  has_one :profile_picture, class_name: 'Image', as: :imageable
  include UsersHelper

  validates :username, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6, too_short: "should have at least %{count} characters" }, on: :create

  # before_create :default_values
  has_secure_password validations: false # Remove need for confirmation
  
  before_save { create_remember_token if (self.remember_token.blank? && self.password_digest && defined?(self.password_digest)) }
  before_save { |user| user.username = username.downcase }
  # def default_values
  # end
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
