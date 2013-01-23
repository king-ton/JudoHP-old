class Article < ActiveRecord::Base
  
  attr_accessible :heading, :content
  
  validates :heading, presence: true
  validates :content, presence: true
end
