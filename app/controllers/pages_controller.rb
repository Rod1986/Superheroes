class PagesController < ApplicationController
  def batman
  end

  def superman
    render layout:'landing'
  end
end
