class SkillsController < ApplicationController

  def home
  end

  def index
    @skills = params[:skill_type] ? Skill.filter(params[:skill_type]) : @skills = Skill.all
    # @skill = Skill.find(params[:tag_id])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def tagged
    if params[:tag].present?
      @skill = Skill.tagged_with(params[:tag])
    else
      @skill = Skill.all
    end
  end
  private

  def skills_params
    params.require(:skill).permit(:skill_type)
  end

end
