class Photo < ActiveRecord::Base
  has_attached_file :file,
    styles: {
      thumbnail: "128x128"
    },
    :url => "/system/:class/:attachment/:basename/:style/:basename.:extension",
  	:path => ":rails_root/public/system/:class/:attachment/:basename/:style/:basename.:extension"

  validates_attachment :file, :presence => true, :size => { :in => 0..20.megabytes }
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end