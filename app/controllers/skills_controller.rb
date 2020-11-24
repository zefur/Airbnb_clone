class SkillsController < ApplicationController

  def home
  end
  
  #GET /skills
  def index
    @skills = Skill.all
    # @skill = Skill.find(params[:tag_id])
  end
  #GET /skills/new
  def new
    @skill = Skill.new
    authorize @skill
  end
  #GET /skills/:id
  def show
    @skill = Skill.find(params[:id])
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user

    if @skill.save
      redirect_to @skill, notice 'Skill was successfully create.'
    else
      render :new
    end
  end

    def update
      if @skill.update(skill_params)
        redirect_to @skill, notice 'Successfully updated'
      else
        render :edit
      end
    end

    def destroy
      @skill.destroy
      redirect_to skills_path, notice: 'Successfully deleted'
    end

    private

    def set_skill
      @skill = Skill.find([:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :description, :price, :skill_location, :skill_type)
    end



end
