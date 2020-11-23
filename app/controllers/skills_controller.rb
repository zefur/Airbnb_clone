class SkillsController < ApplicationController

  def home
  end

  def index
    @skills = Skill.all
    @skill = Skill.find(params[:tag_id])
  end

  def show
    @skill = Skill.find(params[:id])
  end


end
