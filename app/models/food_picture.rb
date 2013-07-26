class FoodPicture < ActiveRecord::Base
  has_attached_file :picture, :styles => {:medium => "640x480", :thumb => "64x48"}

  before_validation :set_person

  def set_person
    person_id = Person.first.id
  end

  def prior
    FoodPicture.where(person_id: self.person_id).
      where(['day < ?', self.day]).last
  end

  def next
    FoodPicture.where(person_id: self.person_id).
      where(['day > ?', self.day]).first
  end

end
