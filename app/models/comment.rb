class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RATINGS = {
    'One star': '1_star',
    'Two stars': '2_star',
    'Three stars': '3_star',
    'Four stars': '4_star',
    'Five stars': '5_star'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end
end
