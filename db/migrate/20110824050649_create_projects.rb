class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.integer :project_schema_id
      t.timestamps
      t.integer :lock_version, :default => 0
    end
  end

  def self.down
    drop_table :projects
  end
end
