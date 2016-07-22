class CommentsController < ApplicationController
  def new

  end

  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to post_path(Post.find(params[:post_id])), notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment}
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    @comment.author = current_user.email
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { redirect_to post_path(@post), notice: 'Comment was not successfully created.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body,:post_id)
  end
end
