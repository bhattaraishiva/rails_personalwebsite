class PersonalWebsitesController < ApplicationController
  def home
  end

  def skill
  end

  def education
  end

  def experience
  end

  def about
    @about = About.new
    if request.post?
      @about = About.new(about_params)
      @about.save
      redirect_to root_path
      flash[:notice] = "Thank you for your message"
    end
  end
  def about_params
    params.require(:about).permit(:name, :email, :phone, :message)
  end
end
