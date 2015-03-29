class AdminController < ApplicationController

	before_filter :authorized?

  private

  def authorized?
    unless current_user.has_role? :admin
      flash[:error] = "You are not authorized to view that page."
      redirect_to articles_path
    end
  end

end
