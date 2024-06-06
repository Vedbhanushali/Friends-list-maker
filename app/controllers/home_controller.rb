class HomeController < ApplicationController
  def index
  end
  def about
    @about_me = "My Name is Ved Bhanushali"
    
  end
end
