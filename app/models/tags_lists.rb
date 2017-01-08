class TagsLists < ActiveRecord::Base
  belongs_to :tag
  belongs_to :list
end
