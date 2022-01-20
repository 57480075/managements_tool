class ToolsController < ApplicationController
  def index
  end

  def new
    @task_open = TaskOpen.new
  end

  def create
    @task_open = TaskOpen.new(task_open_params)
    if @task_open.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def task_open_params
    params.require(:task_open).permit(:clean_id, :money_id, :trouble_id, :sales_target, :checker).merge(user_id: current_user.id)
  end

end
