class Book < ActiveRecord::Base
  validates_presence_of :title,:year
  validates_numericality_of :year, :only_integer => true
  validates_uniqueness_of :title, :scope => :year
  after_initialize :defaults

  def mark_as_rented
    self.status =  "rented"
    self.save
  end
  
  private
  def defaults
    self.status ||= "available"
  end
end
