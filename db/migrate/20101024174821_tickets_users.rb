class TicketsUsers < ActiveRecord::Migration
  def self.up
    create_table :tickets_users, :id => false do |t|
      t.references :ticket, :user
    end
  end

  def self.down
    drop_table :tickets_users
  end
end
