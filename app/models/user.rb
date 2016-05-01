class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :plays

  has_attached_file :play_img, styles: { play_index: "250*350>", play_show: "325*475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\Z/
end
