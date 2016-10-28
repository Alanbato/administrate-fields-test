class AddProfilePicToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :profile_pic_id, :string
  end
end
