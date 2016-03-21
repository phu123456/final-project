# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :text
#

require "rails_helper"

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.new(email: "slurpe3@gmail.com", password: "12345678", password_confirmation: "12345678")
  end
  it "email cannot be blank" do
    @user1.email = ""
    expect(@user1.save).to be(false)
  end

  it "password cannot be blank" do
    @user1.password = ""
    expect(@user1.save).to be(false)
  end

  it "password_cannot be blank" do
    @user1.password_confirmation = ""
    expect(@user1.save).to be(false)
  end
end
