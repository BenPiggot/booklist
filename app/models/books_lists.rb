class BooksLists < ActiveRecord::Base
  belongs_to :book
  belongs_to :list
end
