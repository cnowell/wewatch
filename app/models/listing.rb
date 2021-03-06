class Listing < ActiveRecord::Base
     has_attached_file :image, :styles => { medium: "200x>", thumb: "100x100>" }, :default_url => "largerLogo.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

validates :name, :description, :price, presence: true
validates :price, numericality: {greater_than: 0}
validates_attachment_presence :image


belongs_to :user
belongs_to :category
belongs_to :subcategories
has_many :orders

end



