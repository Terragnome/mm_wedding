class Photo < ActiveRecord::Base
  has_attached_file :file,
    styles: {
      thumbnail: "150x150"
    }

  validates_attachment :file, :presence => true, :size => { :in => 0..20.megabytes }
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end