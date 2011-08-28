require 'test_helper'

class ProjectSchemasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ProjectSchema.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ProjectSchema.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ProjectSchema.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to project_schema_url(assigns(:project_schema))
  end

  def test_edit
    get :edit, :id => ProjectSchema.first
    assert_template 'edit'
  end

  def test_update_invalid
    ProjectSchema.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProjectSchema.first
    assert_template 'edit'
  end

  def test_update_valid
    ProjectSchema.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProjectSchema.first
    assert_redirected_to project_schema_url(assigns(:project_schema))
  end

  def test_destroy
    project_schema = ProjectSchema.first
    delete :destroy, :id => project_schema
    assert_redirected_to project_schemas_url
    assert !ProjectSchema.exists?(project_schema.id)
  end
end
