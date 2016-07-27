class Invite < ApplicationRecord
  has_attached_file :header_image, styles: { cover: "1440x400>"}, default_url: "/images/:style/default_header_image.png"
  has_attached_file :bride_image, styles: { thumb: "200x200>"}, default_url: "/images/:style/default_header_image.png"
  has_attached_file :groom_image, styles: { thumb: "200x200>"}, default_url: "/images/:style/default_header_image.png"


  validates_attachment_content_type :header_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :bride_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :groom_image, content_type: /\Aimage\/.*\Z/
end
