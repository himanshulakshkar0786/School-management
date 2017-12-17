class ChangeDataTypeToStudents < ActiveRecord::Migration[5.1]
  def change
  	change_column :students, :classname_id, :integer
  end
end
