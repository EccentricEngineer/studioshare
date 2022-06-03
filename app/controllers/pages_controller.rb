class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @studios = Studio.all.first(4)
  end

end
