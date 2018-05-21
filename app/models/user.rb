class User < ApplicationRecord
  extend Devise::Models
  include Friendlyable
  belongs_to :account, optional: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
