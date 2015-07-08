class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins
<<<<<<< HEAD
  validates :name, presence: true
  acts_as_commontator
=======

  validates :name, presence: true
>>>>>>> e977655d6a4fe39b980814bcec520058317f8029
end
