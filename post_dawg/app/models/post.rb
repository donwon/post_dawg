class Post < ActiveRecord::Base
  belongs_to :category



#Need the paperclip gem to use this code (make it fit a square 100x100
# the ">" keeps the aspect ratio
  has_attached_file :image, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                    # :default_url => "/images/:style/missing.png"
                    :default_url => ActionController::Base.helpers.asset_path('Missing.png')

 validates_attachment_size :image, less_than: 10.megabytes

end


