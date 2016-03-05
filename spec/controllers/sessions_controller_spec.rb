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

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

end
