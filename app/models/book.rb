class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true, uniqueness: true, on: :create
  validates :synopsis, presence: true
  has_attached_file :img, :styles => { medium: "300x300>", :small => "150x150>", thumb: "100x100>" },
  :url  => "/upload_images/:id/:style/:basename.:extension",
  :path => ":rails_root/public/upload_images/:id/:style/:basename.:extension"

  validates_attachment_presence :img
  validates_attachment_size :img, :less_than => 5.megabytes
  validates_attachment_content_type :img, :content_type => ['image/jpeg', 'image/png']
end
