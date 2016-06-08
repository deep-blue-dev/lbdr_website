class Group < ApplicationRecord
  has_many :executives
  has_attached_file :photo, styles: { big: "1920x800<", thumb: "150x150#" },
    default_url: "/images/:style/missing.jpg", :storage => :s3, :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => ENV['s3_bucket'], :access_key_id => ENV['aws_access_key_id'], :secret_access_key => ENV['aws_access_secret']}
  end

  def self.executive_committee
    first.executives.where(position: 'Executive Committee')
  end

  def self.board_of_directors
    first.executives.where(position: 'Board of Directors')
  end

end
