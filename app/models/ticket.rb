class Ticket < ActiveRecord::Base
#  has_and_belongs_to_many :duplicates, :class_name => "Ticket", :foreign_key => 'duplicate_id'
#  has_and_belongs_to_many :blocking, :class_name => "Ticket", :foreign_key => 'blocking_id'
  has_many :updates, :dependent => :destroy
  has_and_belongs_to_many :users
  acts_as_taggable
end
