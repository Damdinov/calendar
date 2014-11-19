class Event < ActiveRecord::Base
	validates :title, presence: true
	validates :place, presence: true
	validates :startdate, presence: true
	validates :enddate, presence: true
	validates :createtime, presence: true

validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    errors.add(:startdate, "can't be earlier enddate") if
       startdate > enddate
  end
 

end
