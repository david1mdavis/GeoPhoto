
                  
class Photo < ActiveRecord::Base

has_attached_file :image,
                  :styles => { :thumbnail => "100x100#" },
                  :storage => :s3,
                  :s3_credentials => S3_CREDENTIALS
                  
 def as_json(options = nil)
    {
      :lat => self.lat,
      :lng => self.lng,

      :image_urls => {
        :original => self.image.url,
        :thumbnail => self.image.url(:thumbnail)
      },

      :created_at => self.created_at.iso8601
    }
  end
end
