# == Schema Information
#
# Table name: trips
#
#  id              :integer          not null, primary key
#  trip_date       :date
#  driver          :text
#  weight          :text
#  trip_type       :boolean
#  liter           :decimal(, )
#  distance        :decimal(, )
#  average         :float
#  cement          :text
#  destination     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  engine_id       :integer
#  transmission_id :integer
#  gear_id         :integer
#  air_id          :integer
#  truck_id        :integer
#  coolant_id      :integer
#  blower_id       :integer
#  allowance       :decimal(, )
#

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
