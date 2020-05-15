class Post < ApplicationRecord

  belongs_to :user

  def formatted_time
    self.created_at.strftime("%-dth %b, %l:%M%P")
  end
end
