class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rounds, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :comments, dependent: :destroy

  include ScoringAverage, GreensAverage, FwysAverage, PuttingAverage, Name, BirdieAverage, ParAverage

end
