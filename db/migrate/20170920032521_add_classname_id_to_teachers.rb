class AddClassnameIdToTeachers < ActiveRecord::Migration[5.1]
  def change
  	add_column :teachers, :classname_id, :integer
  end
end
