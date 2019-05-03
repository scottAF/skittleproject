class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RATINGS = {
    '★★★★★': '5_star',
    '★★★★☆': '4_star',
    '★★★☆☆': '3_star',
    '★★☆☆☆': '2_star',
    '★☆☆☆☆': '1_star'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end
end

