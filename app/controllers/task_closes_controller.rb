class TaskClosesController < ApplicationController
  def new
    @task_close = TaskClose.new
    redirect_to root_path unless user_signed_in?
  end

  def create
    @task_close = TaskClose.new(task_close_params)
    if @task_close.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @task_close = TaskClose.all.order(created_at: :desc)
    redirect_to root_path unless user_signed_in?
  end

  private
  def task_close_params
    params.require(:task_close).permit(:clean_id, :money_id, :trouble_id, :sales_result, :checker).merge(user_id: current_user.id)
  end
end
