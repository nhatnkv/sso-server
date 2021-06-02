class TaskController < ApplicationController
  respond_to :json

  def index
    respond_with Task.all
  end
end
