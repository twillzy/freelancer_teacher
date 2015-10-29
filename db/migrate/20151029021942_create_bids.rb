class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bidder_id
      t.integer :bid_amount
      t.string :name
      t.string :location
      t.string :avatar
      t.string :reputation
      t.string :skills
      t.string :profile
      t.string :proposal
      t.integer :project_id
    end
  end
end
