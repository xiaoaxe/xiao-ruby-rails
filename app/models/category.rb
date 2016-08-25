class Category < ApplicationRecord
  attr_accessor :name
  has_many :posts
end
