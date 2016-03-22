class PagesController < ApplicationController
  def batman
  end

  def superman
    render layout:'landing'
  end

  def batman_vs_superman
  end
end
