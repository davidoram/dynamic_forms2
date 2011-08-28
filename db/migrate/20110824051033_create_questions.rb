class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      # type specifier
      t.string :type
      
      # common attributes
      t.string :question
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
