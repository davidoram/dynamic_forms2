class ProjectSchema < ActiveRecord::Base
  attr_accessible :name, :questions
  serialize       :questions
  has_many        :projects
  has_many        :project_schema_questions, :order => :position
   
end
