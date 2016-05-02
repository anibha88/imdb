class Play < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :play_img, styles: { play_index: "250*350>", play_show: "325*475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\Z/
end
