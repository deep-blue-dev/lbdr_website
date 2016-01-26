class Brand < ApplicationRecord
  # belongs_to :sector

  # Brand Photo File Uploads
  has_attached_file :brand_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
    :download,
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment_content_type :brand_photo, content_type: /\Aimage\/.*\Z/

  # Brand Logo File Uploads
  has_attached_file :logo_for_brand, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
    :download,
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment_content_type :logo_for_brand, content_type: /\Aimage\/.*\Z/

  #  S3 credentials
  def s3_credentials
    {:bucket => "AWS_BUCKET_NAME", :access_key_id => "AWS_ACCESS_KEY_ID", :secret_access_key => "AWS_SECRET_ACCESS_KEY"}
  end
end
