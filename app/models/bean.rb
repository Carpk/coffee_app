class Bean < ActiveRecord::Base
  belongs_to :brand
  has_many :reviews
end
