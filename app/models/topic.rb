class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :construction_work_contents, presence: true
  validates :drawing, presence: true
  validates :address, presence: true
  validates :suitable_time, presence: true
  validates :budget, presence: true
  validates :important_think, presence: true

  belongs_to :user

  mount_uploader :construction_site_picture, ImageUploader
  mount_uploader :drawing, ImageUploader

end
