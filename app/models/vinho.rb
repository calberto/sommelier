class Vinho < ActiveRecord::Base
	mount_uploader :foto, PictureUploader
        
end
