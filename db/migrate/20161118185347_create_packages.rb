class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :shipping_status
      t.timestamps
    end
  end
end
