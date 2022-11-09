class Category  < ActiveRecord::Base
    has_many :tags
    has_many :jobs, through: :tags
end 