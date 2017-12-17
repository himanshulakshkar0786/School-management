class Teacher < ApplicationRecord
	validates :name, :phone_number, presence: true
	validates :phone_number, length: {minimum: 10}
	belongs_to :classname
end
