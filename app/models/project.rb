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
#  fpid        :integer
#

class Project < ActiveRecord::Base
	belongs_to :user
	has_many :bids
end
