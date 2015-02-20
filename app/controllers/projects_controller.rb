class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(post_params)
    redirect_to projects_url
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url
  end

  def post_params
    params.require(:project).permit(:name, :atos_legal_entity, :invoice_code)
  end

end
