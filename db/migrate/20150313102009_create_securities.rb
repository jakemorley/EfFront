class CreateSecurities < ActiveRecord::Migration
  def change
    create_table :securities do |t|
      t.string :name
      t.decimal :bookprice
      t.decimal :marketprice
      t.decimal :sigma

      t.timestamps null: false
    end
  end
end
