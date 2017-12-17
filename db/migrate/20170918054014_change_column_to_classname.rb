class ChangeColumnToClassname < ActiveRecord::Migration[5.1]
  def change
  	remove_column :classnames, :class, :text
  	add_column :classnames, :classname_id, :text
  end
end
