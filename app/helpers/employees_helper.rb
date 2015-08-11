module EmployeesHelper
	def employee_params
		params.require(:employee).permit(:username)
	end
end
