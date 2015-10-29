# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  bidder_id  :integer
#  bid_amount :integer
#  name       :string
#  location   :string
#  avatar     :string
#  reputation :string
#  skills     :string
#  profile    :string
#  proposal   :string
#  project_id :integer
#

class Bid < ActiveRecord::Base
	
end
