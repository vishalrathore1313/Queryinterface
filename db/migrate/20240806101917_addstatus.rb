class Addstatus < ActiveRecord::Migration[7.1]
  def change
      add_column :employees,:status, :integer,default:0
  end
end
