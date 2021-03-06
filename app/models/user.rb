class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :tweets, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-z][a-z0-9]+\z/ }, length: { in: 4..24 }
  validates :screen_name, length: { maximum: 140}
  validates :bio, length: { maximum: 200}
  validates :email, presence: true, uniqueness: { case_senssitive: false }
  validates :password, confirmation: true, length: { in: 6..24 }, if: :password
  validates :password_confirmation, presence: true, if: :password

  def followed_by? user
    inverse_follows.where(followed_id: user.id).exists?
  end
end
