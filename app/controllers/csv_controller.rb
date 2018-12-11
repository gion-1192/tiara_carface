class CsvController < ApplicationController
	#GET /csv
  def index
	end

	#POST /csv/import
  def import
		upload_file =  params[:attendance]
		CSV.read(upload_file)
		if(upload_file.nil?) 
			redirect_to :index
		end
  end

	#GET /csv/show
  def show
  end
end
