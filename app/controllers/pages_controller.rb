class PagesController < ApplicationController
  def batman
    render layout:'batmanlanding'
  end

  def superman
    render layout:'supermanlanding'
  end

  def batman_vs_superman
  end

  def save_vote
    if params[:heroe].present? && params[:email].present?
      Vote.new(
        heroe: params[:heroe],
        email: params[:email]
        ).save
      redirect_to pages_batman_vs_superman_path, notice: 'Vote submited'
     else
      flash[:alert] = 'Please fill the required information'
      render :index
     end
  end

end
