class Addnewcolumn < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :lock_version,:integer,default: 0,null: false
  end
end
