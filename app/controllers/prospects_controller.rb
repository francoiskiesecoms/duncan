class ProspectsController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
    @disable_nav = true
  end
end
