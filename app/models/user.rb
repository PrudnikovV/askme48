class User < ApplicationRecord
  validates :email, :username, presence:true
  validates :email, :username, uniqueness:true
  validates :email, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_]+/.[a-zA-Z0-9\-_.]+\z/, length: { maximum: 255 }
  validates :username, format: /\A[a-zA-Z0-9_]+\z/, length: { maximum: 40 }

  before_validation :before_validation

  def before_validation
    username.downcase!
  end
end
