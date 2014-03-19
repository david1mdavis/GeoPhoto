class PhotosController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  respond_to :json
  
 

   #Parameters: {"photo"=>{"lat"=>"34.44505565802981", "lng"=>"-119.8392825109137", "image"=>#<ActionDispatch::Http::UploadedFile:0x007faea9c55490 
#  @tempfile=#<File:/var/folders/q4/gknmsggx7n5f2ppm4k53zw5c0000gn/T/RackMultipart20140212-32893-hdu0ad>,
 #  @original_filename="image.jpg", 
  # @content_type="image/jpeg", 
  # @headers="Content-Disposition: form-data; name=\"photo[image]\"; filename=\"image.jpg\"\r\nContent-Type: image/jpeg\r\n">}}

  def photo_params
     #params.require(:photo).permit(:lat, :lng , :image => [:tempfile, :filename, :content_type, :header, :original_filename])
     
     #params.require(:photo).permit(:lat, :lng, :image)
     params.require(:photo).permit(:image, :lat, :lng)
     #params.require(:photo).permit(photos_attributes: :image)
     #params.require(:photo).permit(:lat, :lng , images_attributes: [:image])    
   
  end
  def index
    
    @photos = Photo.all
    print ({:photos => @photos}.as_json)
    respond_with({:photos => @photos}.as_json)
  end
  
  def show
    
    @photo = Photo.find(params[:id])
    respond_with(@photo)
  end
  
  def create
    print S3_CREDENTIALS
   
    print "--------------------"

#    @photo = Photo.create(photo_params)
    @photo = Photo.new(photo_params)
    @photo.save
  
    print "++++++++++++++++++++"
    respond_with(@photo)
  end
  
end