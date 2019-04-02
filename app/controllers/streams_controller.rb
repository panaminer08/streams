class StreamsController < ApplicationController
  def index   
    @streams = Stream.all   
 end   
    
 def new   
    @stream = Stream.new   
 end   
    
 def create   
    @stream = Stream.new(stream_params)   
       
    # if @stream.save   
      #  redirect_to steams_path, notice: "Successfully uploaded."   
    # else   
       render "new"   
    # end   
       
 end   
    
 def destroy   
    @stream = Stream.find(params[:id])   
    @stream.destroy   
    redirect_to streams_path, notice:  "Successfully deleted."   
 end   
    
 private   
    def stream_params   
    params.require(:stream).permit(:name, :attachment)   
 end   
end
