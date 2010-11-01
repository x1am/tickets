class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  acts_as_tagger
  acts_as_taggable
  has_many :updates, :foreign_key => 'author_id'
  has_and_belongs_to_many :assigned_at, :class_name => 'Update', :join_table => 'updates_users'
  has_and_belongs_to_many :tickets
end
