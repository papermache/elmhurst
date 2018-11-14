module ProjectsHelper
	def project_description
		Project.find_by_id(params[:id]).description  rescue nil
	end

	def find_project_created_at
       Project.find_by_id(params[:id]).created_at.localtime rescue nil
	end

	def find_project_title
    	Project.find_by_id(params[:id]).try(:title) rescue nil
    end
end
