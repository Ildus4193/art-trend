class Product < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "400x500>", :thumb => "226x197>" }
  default_scope :order => 'title'
  
  def self.search(query)
    where("title like ?", "%#{query}%")
  end
end
