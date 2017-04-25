class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :picture, PictureUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rounds, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :membership
  has_many :lessons
  has_many :photos

  def name
    @name ||= [first_name, last_name].join(' ')
  end

  def total_rounds
    rounds.count
  end

  include ScoringAverage
  include GreensAverage
  include FwysAverage
  include PuttingAverage
  include BirdieAverage
  include ParAverage
  include Badge
end
