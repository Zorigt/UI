class CreateYelps < ActiveRecord::Migration
  def change
    create_table :yelps do |t|
      t.string :name
      t.string :address
      t.text :descr
      t.text :comment

      t.timestamps
    end
  end
end
