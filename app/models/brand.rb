class Brand < ActiveRecord::Base
  has_many :beans

  def avg_score
    score = []
    Bean.where(brand_id: self.id).each{ |bean| score << bean.avg_score }
    return 0 if score.length == 0
    divisor = score.length
    score.reduce(:+) / divisor
  end
end
