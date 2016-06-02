class Brand < ApplicationRecord
  belongs_to :sector

# Brand Photo File Uploads
  has_attached_file :brand_photo,
    styles: { big: "1920x800<"},
    default_url: "/images/:style/missing.png",
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
  validates_attachment_content_type :brand_photo,
    content_type: /\Aimage\/.*\Z/

  # Brand Logo File Uploads
  has_attached_file :logo_for_brand,
    styles: { thumb: "200x150>", medium: "400x300>" },
    default_url: "/images/:style/missing.png",
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
  validates_attachment_content_type :logo_for_brand,
    content_type: /\Aimage\/.*\Z/

    def s3_credentials
      {:bucket => ENV['s3_bucket'], :access_key_id => ENV['aws_access_key_id'], :secret_access_key => ENV['aws_access_secret']}
    end
end
