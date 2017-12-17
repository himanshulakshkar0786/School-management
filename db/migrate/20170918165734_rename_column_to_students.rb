class RenameColumnToStudents < ActiveRecord::Migration[5.1]
  def change
  	rename_column :students, :class, :classname_id
  end
end
