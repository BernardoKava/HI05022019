class Post < ApplicationRecord
  belongs_to :delivery
  belongs_to :post_type

end