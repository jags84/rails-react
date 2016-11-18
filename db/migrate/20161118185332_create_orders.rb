class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user,index: true
      t.references :package, index: true
      t.references :carrier, index: true
      t.string :tracking_number
      t.timestamps
    end
  end
end
