class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
# this post saved my life.
#https://stackoverflow.com/questions/13177161/rails-add-devise-user-info-to-post?answertab=active#tab-top

  def index
    @posts = Post.where(:user_id => current_user.id).order("created_at DESC")
    #@posts = Post.all.order("created_at DESC")
    #this post also saves lives
    #https://stackoverflow.com/questions/25831594/devise-how-to-show-users-post
    
  end

  def new
    @post = Post.new
    @post.user_id = current_user.id 
 
  end

  def create

  @post = Post.new(post_params) 
  @post.user_id = current_user.id 

  if @post.save

    redirect_to @post, notice: 'This is a Reminder that you created a shopping list with QuikByte app visit us to view your list.'
@user = current_user
PostMailer.post_created(@user).deliver_later(wait_until: 10.hours.from_now)

  
  else
    render 'new'
  end
  end

 def show

 end

def edit

end

def update

   if @post.update(post_params)
    redirect_to @post
   else
    render 'edit'
   end
end

def destroy
  @post.destroy
  redirect_to root_path
end

# private

def find_post
  @post = Post.find(params[:id])
end

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
