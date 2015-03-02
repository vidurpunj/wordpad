class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, within: 6..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  validates_presence_of :password, within: 8..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  validates_presence_of :email, :password
  validates_uniqueness_of :name, :email
  validates :name, format: {with: /\A[a-zA-Z0-9]+\Z/}
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  has_many :blogs, :foreign_key => :user_id
end
