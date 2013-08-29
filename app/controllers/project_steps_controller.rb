class ProjectStepsController < ApplicationController
	include Wicked::Wizard
	steps :add_energyuse, :add_projectinfo, :add_audit

	def show
		@project = Project.find(params[:project_id])
		render_wizard
	end

	def update
		@project = Project.find(params[:project_id])
		@project.update_attributes(params[:project])
		render_wizard @project
	end

	def finish_wizard_path
  		flash[:info] = "Thanks for submitting your project. You can track the status of all your projects here."
  		projects_path
	end


end
