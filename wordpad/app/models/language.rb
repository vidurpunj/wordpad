class Language < ActiveRecord::Base

  validates :name, :presence => true
  validates :name, length: {maximum: 100}
  validates_uniqueness_of :name

  has_many :blogs, :foreign_key => :language_id
end
