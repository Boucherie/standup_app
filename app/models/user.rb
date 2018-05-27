class User < ApplicationRecord
  include Friendlyable
  rolify
  attr_accessor :role
  extend Devise::Models
  belongs_to :account, optional: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
