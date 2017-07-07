class Category < ActiveRecord::Base
   has_many :subcategories
   has_many :listings
end


  def all_categories
    Category.where(:parent_type => 'Category')
  end

