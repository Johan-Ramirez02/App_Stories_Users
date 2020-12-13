class User < ApplicationRecord
  has_many :stories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        validates :name, presence: true
  enum role: %w[user admin] 

        def count_stories
          self.stories.count
        end

        def all_users
          self.users.count
        end
end
