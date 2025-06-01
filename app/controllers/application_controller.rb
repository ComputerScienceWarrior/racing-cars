class ApplicationController < ActionController::Base
    helper_method :current_employee, :logged_in?

    def current_employee
        @current_employee ||= Employee.find_by(id: session[:employee_id]) if session[:employee_id]
    end

    def logged_in?
        current_employee.present?
    end
end
