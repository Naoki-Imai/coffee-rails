class HomesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to coffees_path
    end
  end
end
