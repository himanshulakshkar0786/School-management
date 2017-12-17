class AddColumnToClassnames < ActiveRecord::Migration[5.1]
  def change
  	remove_column :classnames, :classname_id
  	add_column :classnames, :name, :string
  end
end
