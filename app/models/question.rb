class Question < ActiveRecord::Base
  has_many  :project_schema_questions
end

class StringQuestion < Question
end

class IntegerQuestion < Question
end
