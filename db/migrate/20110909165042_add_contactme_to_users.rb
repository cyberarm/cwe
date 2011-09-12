class AddContactmeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :contactme, :boolean, :default => false
  end

  def self.down
    remove_column :users, :contactme
  end
end
