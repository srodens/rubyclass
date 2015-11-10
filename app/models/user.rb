class User < ActiveRecord::Base
  validates :user, presence: true, uniqueness: true,
                    length: { minimum: 7 }
end
