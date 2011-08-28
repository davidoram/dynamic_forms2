require 'test_helper'

class ProjectSchemaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ProjectSchema.new.valid?
  end
end
