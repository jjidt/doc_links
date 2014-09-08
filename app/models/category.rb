class Category < ActiveRecord::Base
  belongs_to :user
  has_many :links
  has_many :snippets
  validates_presence_of :name
  validates_presence_of :user_id
end
