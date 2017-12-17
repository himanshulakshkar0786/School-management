class AddPaperclipToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :students, :image
  end
end
