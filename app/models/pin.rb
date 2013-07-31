class Pin < ActiveRecord::Base
  
  attr_accessible :description, :image, :image_remote_url

  
    validates :description, presence: true
    validates :user_id, presence: true
     validates_attachment :image
             
    belongs_to :user
    has_attached_file :image, styles: { medium: "320x240>" }


  def image_remote_url=(url_value)
    self.image = URI.parse(url_value) unless url_value.blank?
    super
  end
end

