module ProjectsHelper
	def project_description
		Project.find_by_id(params[:id]).description 
	end
end
