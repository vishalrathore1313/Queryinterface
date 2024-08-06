class CreateTableEmployeeProgrammingLanguage < ActiveRecord::Migration[7.1]
  def change
    create_table :table_employee_programming_languages do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :programming_language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
