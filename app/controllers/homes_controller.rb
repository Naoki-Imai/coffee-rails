class HomesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to stores_path
    end
  end
end
