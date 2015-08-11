class EmployeesController < ApplicationController
	include EmployeesHelper

	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		@employee.save

		redirect_to employees_path
	end
end
