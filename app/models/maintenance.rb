# == Schema Information
#
# Table name: maintenances
#
#  id               :integer          not null, primary key
#  engine_oil       :decimal(, )
#  transmission_oil :decimal(, )
#  gear_oil         :decimal(, )
#  air_filter       :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Maintenance < ActiveRecord::Base
end
