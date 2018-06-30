class HomeController < ApplicationController
  layout "pages"

  def index
    @technologies = Technology.all;
  end
end