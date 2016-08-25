class Post < ApplicationRecord
  # attr_accessor :title, :body, :category_id, :author_id

  def initialize(title='title',body='body',category_id='category_id',author_id='author_id')
    @title = title
    @body = body
    @category_id= category_id
    @author_id= author_id
  end

  belongs_to :category
end
