class Post < ApplicationRecord
  # attr_accessor :title, :body, :category_id, :author_id
  # attr_accessor @title, @body, @category_id, @author_id

  # def initialize
  #   @title = @body = @category_id = @author_id=''
  # end

  # def initialize(title='',body='',category_id=0,author_id=0)
  #   @title = title
  #   @body = body
  #   @category_id= category_id
  #   @author_id= author_id
  # end

  belongs_to :category
end
