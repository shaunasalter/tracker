class RecordsController < ApplicationController
	include RecordsHelper

	def index
		@records = Record.where("employee_id = ?", params[:employee_id])
		@employee = Employee.find(params[:employee_id])
	end

	def new
		@record = Record.new
		@employee = Employee.find(params[:employee_id])
	end

	def create
		@record = Record.new(record_params)
		@record.employee_id = params[:employee_id]
		@record.save
		@employee = Employee.find(params[:employee_id])

		redirect_to employee_records_path(@employee)
	end

	def showall
		@records = Record.all
	end
end
