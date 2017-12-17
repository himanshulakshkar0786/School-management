class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
    	t.text :name
    	t.text :email
    	t.string :phone_number
    	t.text :subject

      t.timestamps
    end
  end
end
