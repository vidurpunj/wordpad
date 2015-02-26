class Blog < ActiveRecord::Base

  validates_presence_of :title, :language_id, :user_id, :content
  validates :title, length: {minimum: 2}
  validates :content, length: {maximum: 500}
  validates_uniqueness_of :title

  belongs_to :user
  belongs_to :language
end
