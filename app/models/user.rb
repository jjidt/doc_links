class User < ActiveRecord::Base
  validates_presence_of :name
  has_secure_password
  has_many :categories
end
