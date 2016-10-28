class AddCategToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :categ, :int
  end
end
