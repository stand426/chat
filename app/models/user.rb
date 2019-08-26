class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  has_many :group_messags
  has_many :sent_direct_messages, foreign_key: "sender_id", class_name: "DirectMessage"
  has_many :received_direct_messages, foreign_key: "recipient_id", class_name: "DirectMessage"

end
