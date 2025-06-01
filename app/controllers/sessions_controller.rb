class SessionsController < ApplicationController
  def new
  end

  def create
    employee = Employee.find_by(email: params[:email])

    if employee&.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to root_path, notice: "Logged in successfully!"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:employee_id)
    redirect_to root_path, notice: "Logged out successfully!"
  end
end
