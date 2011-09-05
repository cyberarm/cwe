class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :app
      t.text :help
      t.string :requester
      t.string :site

      t.timestamps
    end
    add_index :projects, :slug, :unique => true
  end

  def self.down
    drop_table :projects
  end
end
