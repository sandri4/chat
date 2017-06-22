class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_attached_file :avatar, styles: {small: '40x40', medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/defaultavatar.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :background_image, styles: { medium: "240x720>", thumb: "100x100>" }, default_url: "/images/back/:style/defback.jpg"
  validates_attachment_content_type :background_image, content_type: /\Aimage\/.*\z/
  def name
    email.split('@')[0]
  end
end
