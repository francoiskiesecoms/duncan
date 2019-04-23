class Session < ApplicationRecord
  belongs_to :activity
  has_many :bookings

  def schedule
    " #{date.strftime("%A %d/%m")} at #{date.strftime("%H:%M")}    \n "
  end

  def self.this_week
    return all.select { |session| Date.today <= session.date  && session.date <= (Date.today + 7)}
  end

  def hour
    return date.strftime("%H:%M")
  end

  def day
    return date.strftime("%A")
  end

end
