class ProjectsController < ApplicationController
  include AuthenticationRedirectConcern

  before_action :authenticate_redirection, except: [:index]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  Aws.use_bundled_cert!

  def index
    @projects = Project.all
  end

  def edit
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      
      puts project_params[:main_image]
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :description, :image_url, :main_image, :link_to_code, :link_to_site,
                                        :period, :order, technology_ids: [])
    end
end
