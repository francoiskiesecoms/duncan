class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :dogs

  def upcoming_classes
    upcoming_classes = bookings.select { |booking| booking.session.date >= Date.today}
    return upcoming_classes
  end

  def completed_classes
    completed_classes = bookings.select { |booking| booking.session.date < Date.today}
    return completed_classes
  end

  def unbooked_sessions
    unbooked = Session.all.select do |session|
      bookings.find_by(session_id: session.id) == nil
    end
  return unbooked.select { |session| Date.today <= session.date  && session.date <= (Date.today + 7)}
  end
end


