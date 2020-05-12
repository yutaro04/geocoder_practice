class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def current_position
    #現在地を返す
  end

  def address
    self.prefecture + self.city + self.street
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
