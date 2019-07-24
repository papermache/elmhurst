module Api
  module V1
    class ProjectsController < ApplicationController
      respond_to :json

      # # Securing an API
      # http_basic_authenticate_with name: 'admin', password: 'password'

      def index
        respond_with Project.all
        #    cookies[:user_id]   = current_user.id

      end

      def show
        #if not Token.find_by(:user_id => params[:id] , :token => params[:token]) #&& Token.find_by(:token => params[:token])
         # render :json=> {:message=>" INCORRECT ID OR TOKEN "}
        #else
        #respond_with Project.all
        #end
        respond_with Project.find(params[:id])

      end

      def create
        current_user_id = request.env["HTTP_REFERER"].split("&").last.split("=").last.to_i
          @project = Project.create(:title => params[:title], :description=>params[:description] )
         if current_user.present?
           @project.authors << current_user
         else
          current_user = User.find_by_id(current_user_id)
          @project.authors << current_user
         end 
          respond_with   @project 
 
      end

      def update
        respond_with Project.update(params[:id], :title => params[:title], :description=>params[:description])
      end

      def destroy
        respond_with Project.destroy(params[:id])
      end

    end
  end
end
