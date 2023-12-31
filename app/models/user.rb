class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  before_save {self.email = email.downcase}
  has_many :articles

  validates :username,presence: true,
                      uniqueness: {case_sensitive: false},
                      length: {maximum: 105}


end
