class ProjectSchemaQuestions < ActiveRecord::Migration
  def self.up
    create_table :project_schema_questions do |t|
      t.integer :position
      t.integer :project_schema_id
      t.integer :question_id
      t.timestamps
    end    
  end

  def self.down
      drop_table :project_schema_questions
  end
end
