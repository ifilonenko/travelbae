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

class UsersController < ApplicationController
  def root
  end
  def create
    user = User.create(user_params)
    image = Image.create(file: params[:user][:profile_picture], imageable_type: 'User', imageable_id: user.id) if !user.blank?
    respond_to do |format|
      format.html { redirect_to "/users/#{user.id}" }
      format.json { render json: user }
    end
  end
  private
  def user_params
    params.require(:user).permit(:fname, :lname, :username, :password)
  end
end
