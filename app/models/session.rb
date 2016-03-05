# == Schema Information
#
# Table name: sessions
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  session_code :string
#  ip_address   :string
#  is_active    :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Session < ActiveRecord::Base
	belongs_to :user

	before_save :save_with_session_code

	def save_with_session_code
	    self.session_code = SecureRandom.urlsafe_base64 if self.session_code.blank?
	    self.is_active = true
    end

	def character
		self.user
	end

	def disable
	    self.is_active = false
	    self.save
	end
end
