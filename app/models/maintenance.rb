# == Schema Information
#
# Table name: maintenances
#
#  id               :integer          not null, primary key
#  engine_oil       :decimal(, )
#  transmission_oil :decimal(, )
#  gear_oil         :decimal(, )
#  air_filter       :decimal(, )
#  water_coolant    :decimal(, )
#  cement_blower    :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Maintenance < ActiveRecord::Base
  
  def engine_alert
    engine_oil
  end

  def transmission_alert
    transmission_oil
  end

  def gear_alert
    gear_oil
  end

  def air_alert
    air_filter
  end

  def coolant_alert
    water_coolant
  end

  def blower_alert
    cement_blower
  end

end
