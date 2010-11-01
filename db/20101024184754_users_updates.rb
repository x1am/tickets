class UpdatesUsers < ActiveRecord::Migration
  def self.up
    create_table :updates_users, :id => false do |t|
      t.references :update, :user
    end
  end

  def self.down
    drop_table :updates_users
  end
end
