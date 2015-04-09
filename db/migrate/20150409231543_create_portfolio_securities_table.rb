class CreatePortfolioSecuritiesTable < ActiveRecord::Migration
  def change
    create_join_table :portfolios, :securities do |t|
		t.index :portfolio_id
		t.index :security_id
	end
  end
  
  def self.down
	drop_table :portfolios_securities
  end
end
