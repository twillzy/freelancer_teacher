# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string
#  email           :string
#  password_digest :string
#  fid             :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

	has_many :projects
	has_secure_password
	validates :email, :presence => true, :uniqueness => true
	validates :user_name, :presence => true, :length => { :minimum => 3 }

end
