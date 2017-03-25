class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
    
    if (User.find_by_username(params[:id]))
    
         @username = params[:id]
    
    else
        
        redirect_to root_path , :notice=> "Username not found" 
    
    
   
  end
  
  @posts = Post.all.where("User_id = ?", User.find_by_username(params[:id]).id )
  @newPost = Post.new  
  end 
      


  def explore
    @posts = Post.all
  end
  
  
end  
