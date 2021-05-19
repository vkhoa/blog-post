class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  ROLES = ["normal", "admin"]

  ROLES.each do |role|
    define_method("#{role}?") do
      self.role == role
    end
  end
end
