class Sector < ApplicationRecord
  has_many :brands

  has_attached_file :sector_photo, styles: { big: "1920x450#", thumb: "200x150>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :sector_photo,
    content_type: /\Aimage\/.*\Z/
end
