class Category < ApplicationRecord
  # def initialize(name='name')
  #   @name = name
  # end

  # attr_accessor :name

  has_many :posts
end
