class Sector < ApplicationRecord
  # has_many :brands
  has_attached_file :sector_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :sector_image, content_type: /\Aimage\/.*\Z/
end
