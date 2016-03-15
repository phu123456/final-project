# == Schema Information
#
# Table name: trucks
#
#  id         :integer          not null, primary key
#  plate      :text
#  bulker     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Truck < ActiveRecord::Base
  has_many :trips
  has_many :maintenances
end
