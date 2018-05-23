class User < ApplicationRecord
  include Friendlyable

  extend Devise::Models
  belongs_to :account, optional: true

  rolify


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
