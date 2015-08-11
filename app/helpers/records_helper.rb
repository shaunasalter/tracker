module RecordsHelper
	def record_params
		params.require(:record).permit(:date, :horse, :hours, :activity)
	end
end
