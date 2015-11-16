require 'devise/validatable'
class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Devise::Models
  devise :database_authenticatable, :registerable,
         :rememberable,
         :validatable,
         :trackable,
         :authentication_keys => [:username]

  #如果不需要邮箱字段注释这两个
  #:recoverable,
  #:validatable,

end
