class Pin < ActiveRecord::Base
  
  attr_accessible :description, :image

  
    validates :description, presence: true
    validates :user_id, presence: true
     validates_attachment :image
             
    belongs_to :user
    has_attached_file :image, styles: { medium: "320x240>" }

end

