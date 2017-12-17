class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.text :name
    	t.text :email
    	t.string :phone_number
    	t.text :address
    	t.string :class

      t.timestamps
    end
  end
end
