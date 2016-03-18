class Sector < ApplicationRecord
  has_many :brands

  has_attached_file :sector_photo, styles: { big: "1920x800<", thumb: "275x135#" },
    default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :sector_photo,
    content_type: /\Aimage\/.*\Z/
end
