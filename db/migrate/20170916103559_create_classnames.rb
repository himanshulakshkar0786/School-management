class CreateClassnames < ActiveRecord::Migration[5.1]
  def change
    create_table :classnames do |t|
    	t.text :class

      t.timestamps
    end
  end
end
