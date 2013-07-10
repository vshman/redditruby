class PostsController < ApplicationController

	def index
		@posts = Post.all
	end	

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to posts_path, :notice => "Post Saved"
		else
			render "new"
		end
	end

	def edit

	end

	def update

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		if @post.destroy
			redirect_to posts_path, :notice => "Post Deleted"
		else
			render "Post not deleted"
		end
	end


end

