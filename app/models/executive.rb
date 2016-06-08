class Executive < ApplicationRecord
  belongs_to :group

  has_attached_file :photo, styles: { thumb: "150x150#" },
    default_url: "/images/:style/missing.jpg", :storage => :s3, :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => ENV['s3_bucket'], :access_key_id => ENV['aws_access_key_id'], :secret_access_key => ENV['aws_access_secret']}
  end

end
