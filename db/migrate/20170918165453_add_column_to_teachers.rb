class AddColumnToTeachers < ActiveRecord::Migration[5.1]
  def change
  	add_column :teachers, :class, :string
  end
end
