class Wolf < ActiveRecord::Base

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :image, presence: true
  validates :description, presence: true
  

  has_many :howls
end
