class HomePostsController < ApplicationController
  before_action :set_home_post, only: [:show, :edit, :update, :destroy]

  # GET /home_posts
  # GET /home_posts.json
  def index
    @home_posts = HomePost.all
  end

  # GET /home_posts/1
  # GET /home_posts/1.json
  def show
  end

  # GET /home_posts/new
  def new
    @home_post = HomePost.new
  end

  # GET /home_posts/1/edit
  def edit
  end

  # POST /home_posts
  # POST /home_posts.json
  def create
    @home_post = HomePost.new(home_post_params)

    respond_to do |format|
      if @home_post.save
        format.html { redirect_to @home_post, notice: 'Home post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @home_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @home_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_posts/1
  # PATCH/PUT /home_posts/1.json
  def update
    respond_to do |format|
      if @home_post.update(home_post_params)
        format.html { redirect_to @home_post, notice: 'Home post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_posts/1
  # DELETE /home_posts/1.json
  def destroy
    @home_post.destroy
    respond_to do |format|
      format.html { redirect_to home_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_post
      @home_post = HomePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_post_params
      params.require(:home_post).permit(:title, :description)
    end
end
