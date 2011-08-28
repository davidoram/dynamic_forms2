class CreateProjectSchemas < ActiveRecord::Migration
  def self.up
    create_table :project_schemas do |t|
      t.string :name
      t.timestamps
      t.integer :lock_version, :default => 0
    end
  end

  def self.down
    drop_table :project_schemas
  end
end
