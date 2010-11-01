class Update < ActiveRecord::Base
  before_save :check_ticket
  after_save :update_ticket
  belongs_to :ticket
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_and_belongs_to_many :users
  has_and_belongs_to_many :cc, :class_name => "User"
  acts_as_taggable
  def check_ticket
    self.ticket_id = Ticket.create.id if self.ticket_id == nil
  end
  def update_ticket
    t = Ticket.find self.ticket_id
    t.users = self.users unless self.users.empty?
    t.save
  end
end
