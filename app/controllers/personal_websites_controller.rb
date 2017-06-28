class PersonalWebsitesController < ApplicationController
  def home
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
  def download_resume
    send_file "#{Rails.root}/app/assets/docs/resume.pdf", type: "application/pdf"
  end

  def about_params
    params.require(:about).permit(:name, :email, :phone, :message)
  end
end
