class UserLink < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: { scope: :tag,
    message: "only need to save a link once." }
end
