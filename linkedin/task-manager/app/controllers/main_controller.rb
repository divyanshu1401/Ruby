class MainController < ApplicationController
  def index
  end

  def about
  end

  def hello
    redirect_to(controller: :tasks, action: index)
  end
end
