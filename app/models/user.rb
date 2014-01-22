# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  mobile       :string(255)
#  sign_key     :string(255)
#  version      :string(255)
#  device_token :string(255)
#  platform     :string(255)
#  client_code  :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class User < ActiveRecord::Base
end
