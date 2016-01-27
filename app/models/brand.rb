class Brand < ApplicationRecord
  #belongs_to :sector

<<<<<<< Updated upstream
  # Brand Photo File Uploads
  has_attached_file :brand_photo,
    styles: { medium: "300x300>", thumb: "100x100>" },
=======
# Brand Photo File Uploads
  has_attached_file :brand_photo,
    styles: { big: "1200x4500>", thumb: "200x150>" },
>>>>>>> Stashed changes
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :brand_photo,
    content_type: /\Aimage\/.*\Z/

  # Brand Logo File Uploads
  has_attached_file :logo_for_brand,
<<<<<<< Updated upstream
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo_for_brand,
    content_type: /\Aimage\/.*\Z/

=======
    styles: { big: "1200x4500>", thumb: "200x150>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo_for_brand,
    content_type: /\Aimage\/.*\Z/
>>>>>>> Stashed changes
end
