class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rounds
  has_many :messages
  has_many :comments

  include ScoringAverage, GreensAverage, FwysAverage, PuttingAverage, Name

end
