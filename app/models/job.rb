class Job < ActiveRecord::Base
    has_many :tags
    has_many :categories, through: :tags
  
    extend FindBySlug
  
    def slug
      self.title.downcase.gsub(" ", "-")
    end
  

  end