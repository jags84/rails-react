class AddUserToPackage < ActiveRecord::Migration[5.0]
  def change
    add_reference :packages, :user
  end
end
