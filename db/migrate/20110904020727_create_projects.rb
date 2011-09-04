class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.text :app
      t.text :help
      t.string :requester
      t.string :site

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
