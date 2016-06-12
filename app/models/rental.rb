class Rental < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  before_save :mark_as_rented

  private
  def mark_as_rented
    if self.book.status == "available"
      self.book.mark_as_rented
    else
      false
    end
  end

end
