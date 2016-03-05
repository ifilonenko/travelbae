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

class SessionsController < ApplicationController
  include SessionsHelper
  def create
    username = params[:username] || params[:user][:username]
    password = params[:password] || params[:user][:password]
    user = User.find_by_username(username.downcase)
    success = true
    if user && user.authenticate(password)
      save_session_for_user(user)
    else
      success = false
      @active_session = active_session
      @active_session.disable if @active_session
      clear_session_cookie
    end
    if request.headers['Content-Type'].include?('json')
      render json: { success: success, user_id: active_session_character.id } and return
    end
    respond_to do |format|
      format.html { redirect_to !active_session_character.blank? ? active_session_character : '/login'}
      format.json { render json: { success: success, session: active_session, client: active_session_character } }
    end
  end
end
