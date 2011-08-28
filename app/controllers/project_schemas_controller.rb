class ProjectSchemasController < ApplicationController
  def index
    @project_schemas = ProjectSchema.all
  end

  def show
    @project_schema = ProjectSchema.find(params[:id])
  end

  def new
    @project_schema = ProjectSchema.new
  end

  def create
    @project_schema = ProjectSchema.new(params[:project_schema])
    if @project_schema.save
      redirect_to @project_schema, :notice => "Successfully created project schema."
    else
      render :action => 'new'
    end
  end

  def edit
    @project_schema = ProjectSchema.find(params[:id])
  end

  def update
    @project_schema = ProjectSchema.find(params[:id])
    if @project_schema.update_attributes(params[:project_schema])
      redirect_to @project_schema, :notice  => "Successfully updated project schema."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @project_schema = ProjectSchema.find(params[:id])
    @project_schema.destroy
    redirect_to project_schemas_url, :notice => "Successfully destroyed project schema."
  end
end
