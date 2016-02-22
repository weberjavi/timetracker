class SiteController < ApplicationController
  def home
    render "home" #name of the view template
  end
  def contact
    render "contact"
  end
end
