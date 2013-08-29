class ProjectStepsController < ApplicationController
	include Wicked::Wizard
	steps :add_facility, :add_energyuse, :add_projectinfo, :add_audit

	def show
		@project = Project.find(params[:project_id])
		render_wizard
	end

	def update
		@project = Project.find(params[:project_id])
		@project.update_attributes(params[:project])
		render_wizard @project
	end


end
