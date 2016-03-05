# == Schema Information
#
# Table name: images
#
#  id                :integer          not null, primary key
#  imageable_id      :string
#  integer           :string
#  imageable_type    :string
#  file_file_name    :string
#  file_content_type :string
#  file_file_size    :integer
#  file_updated_at   :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Image, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
