# == Schema Information
#
# Table name: blowers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  truck_id   :integer
#

class Blower < ActiveRecord::Base
  has_many :trips
end
