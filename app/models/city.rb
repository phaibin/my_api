# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name_cn    :string(255)
#  name_en    :string(255)
#  longitude  :string(255)
#  latitude   :string(255)
#  enabled    :boolean
#  is_hot     :boolean
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base
end
