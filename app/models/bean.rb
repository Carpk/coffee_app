class Bean < ActiveRecord::Base
  belongs_to :brand
  has_many :reviews

  def avg_score
    score = []
    Review.where(bean_id: self.id).each{ |review| score << review.rating }
    return 0 if score.length == 0
    divisor = score.length
    score.reduce(:+) / divisor
  end
end
