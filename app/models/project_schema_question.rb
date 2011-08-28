class ProjectSchemaQuestion < ActiveRecord::Base
  attr_accessible :name, :questions
  belongs_to      :project_schema
  #acts_as_list    :scope => :project_schema
  belongs_to      :question
end
