class RemoveClassFromTeachers < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachers, :class, :string
  end
end
