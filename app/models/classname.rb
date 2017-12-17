class Classname < ApplicationRecord
	validates :name, presence: :true
	has_many :students, dependent: :destroy
	has_many :teachers, dependent: :destroy
end
