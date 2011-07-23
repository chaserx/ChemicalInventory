class ImportsController < ApplicationController

  
  def new
    @import = Import.new

     respond_to do |format|
       format.html # new.html.erb
     end
     
  end
  
  def create
    @import = Import.new(params[:import])
    respond_to do |format|
      if @import.save
        format.html { redirect_to(chemicals_path)}
        flash[:notice] = "File Uploaded."
        @import.extract_chemicals_from_chemfile
        flash.now[:notice] = "Chemicals Added."
      else
        format.html { render :action => "new" }
      end
    end
  end
  
end
