class Friend < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, if: -> { phone.blank? }
  validates :phone, presence: true, if: -> { email.blank? }
end
