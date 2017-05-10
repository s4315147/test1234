class CommentsController < ApplicationController
  def save
    
    comment = Comment.new
    comment.comment =params[:putcomment] 
    comment.post_id =params[:post_id]
    comment.save
    redirect_to '/home/index'
  end
  
end
