class BooksTags < ActiveRecord::Base
  belongs_to :book
  belongs_to :tag
end
