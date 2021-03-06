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
  validates :plate , presence: true, uniqueness: true
  has_many :trips
  searchkick

  def self.search(search)

    if search
      where(['plate LIKE ?', "%#{search}%"])
    else
      all
    end
  end

  def total_engine_distance
    self.trips.where(engine_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  def total_transmission_distance
      self.trips.where(transmission_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  def total_gear_distance
      self.trips.where(gear_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  def total_air_distance
      self.trips.where(air_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  def total_coolant_distance
      self.trips.where(coolant_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  def total_blower_distance
      self.trips.where(blower_id: nil).map{|x| x.distance.to_i}.inject(0,:+)
  end

  # def total_allowance
  #     self.trips.map{|x| x.allowance.to_i}.inject(0,:+)
  # end
  #
  # def total_liter
  #     self.trips.map{|x| x.liter.to_i}.inject(0,:+)
  # end
  #
  # def total_distance
  #     self.trips.map{|x| x.distance.to_i}.inject(0,:+)
  # end
  #
  # def total_oneway
  #     self.trips.where(trip_type: False).map{|x| x.allowance.to_i}.inject(0,:+)
  # end
  #
  # def total_twoway
  #     self.trips.where(trip_type: True).map{|x| x.allowance.to_i}.inject(0,:+)
  # end

end
