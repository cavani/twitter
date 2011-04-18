# == Schema Information
# Schema version: 20110418195050
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

class User < ActiveRecord::Base
 email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attr_accessible :name, :email
  validates :name, :presence => true,
            :length => { :maximum => 50},
            :uniqueness => true
  validates :email, :presence => true,
            :format => { :with => email_regex},
            :uniqueness => {:case_sensitive => false}
end
