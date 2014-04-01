
                  
class Photo < ActiveRecord::Base
  
   #attr_accessor :image_file_name 
   #attr_accessor :image_content_type
   
   has_attached_file :image, styles: { thumbnail: "200x200" }
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
   validates :image, presence: true
 
 # validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'
 
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
                  

                  
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
