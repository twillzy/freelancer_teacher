# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  currency    :string
#  budget      :string
#  jobs        :string
#  user_id     :integer
#  teacher_id  :integer
#

class Project < ActiveRecord::Base
	
end
