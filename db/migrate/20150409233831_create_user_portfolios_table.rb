class CreateUserPortfoliosTable < ActiveRecord::Migration
  def change
    create_join_table :users, :portfolios do |t|
		t.index :user_id
		t.index :portfolio_id
	end
  end
  
  def self.down
	drop_table :user_portfolios
  end
end
