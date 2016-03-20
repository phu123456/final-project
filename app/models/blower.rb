# == Schema Information
#
# Table name: blowers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blower < ActiveRecord::Base
  belongs_to :trip
end
