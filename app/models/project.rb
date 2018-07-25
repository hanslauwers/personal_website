class Project < ApplicationRecord
  has_many :project_technologies
  has_many :technologies, through: :project_technologies

  mount_uploader :main_image, ProjectUploader
  mount_uploader :thumb_image, ProjectUploader

end
