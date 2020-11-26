class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  #GET /skills
  def index
    @skills = Skill.all
    @skills = policy_scope(Skill).order(created_at: :desc)
    
    
    @markers = @skills.geocoded.map do |skill|
      {
        lat: skill.latitude,
        lng: skill.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { skill: skill }),
        image_url: helpers.asset_url('coding.jpg')
      }
    end
    # @skill = Skill.find(params[:tag_id])
  end
  
  #GET /skills/new
  def new
    @skill = Skill.new
    authorize @skill
  end
   
  #POST /skills
  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    authorize @skill
   
    if @skill.save
      redirect_to @skill, notice: 'Skill was successfully created.'
    else
      render :new
    end
  end
  
  #GET /skills/:id
  def show
  end

  #GET /skills/:id/edit
  def edit
  end

  #PATCH,PUT  /skills/:id
  def update
    if @skill.update(skill_params)
      redirect_to @skill, notice: 'Successfully updated'
    else
      render :edit
    end
  end

  #DELETE /skills/:id
  def destroy
    @skill.destroy
    redirect_to skills_path, notice: 'Successfully deleted'
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:name, :description, :price, :skill_location, :skill_type, :remote)
  end
end
