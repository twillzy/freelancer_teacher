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
	
end
