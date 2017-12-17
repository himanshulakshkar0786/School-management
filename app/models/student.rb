class Student < ApplicationRecord
	validates :name, :phone_number, presence: true
	validates :phone_number, length: {minimum: 10}
	belongs_to :classname
	has_attached_file :image, styles: { small: "20*20", large: "300*300"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_attached_file :video, styles: { medium: { gemoetry: '640*480', format: 'mp4'}, thumb: { gemoetry: '160*120', format: 'jpeg', time: 5}}, processors: [:transcoder]
end
