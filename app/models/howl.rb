class Howl < ActiveRecord::Base

  validates :text, presence: true
  validates :wolf_id, presence: true

  belong_to :wolf
end
