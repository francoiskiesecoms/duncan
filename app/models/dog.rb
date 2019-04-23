class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :date_of_birth, presence: true
  validates :name, presence: true

  def age
    a = ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds)
    return a
  end

  def experience
    class_xp = 10
    age_xp = 100
    max = 2000
    classes= (user.completed_classes.select{|c| c.dog == self}.size).to_f
    xp = (age*age_xp) + (classes*class_xp)
    return xp/ max
  end
end
