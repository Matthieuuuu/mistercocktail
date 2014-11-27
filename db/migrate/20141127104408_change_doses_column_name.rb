class ChangeDosesColumnName < ActiveRecord::Migration
  def change
    add_column :doses, :amount, :float
    remove_column :doses, :name
  end
end
