class Comment < ApplicationRecord
  belongs_to :post
  has_many :subcomments
end
