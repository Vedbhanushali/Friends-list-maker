class HomeController < ApplicationController
  def index
  end
  def about
    @name = "Ved Bhanushali"
    @linkedin = "https://www.linkedin.com/in/ved-k-bhanushali/"
    @twitter = "https://x.com/Vedbhanushxli/"
  end
end
