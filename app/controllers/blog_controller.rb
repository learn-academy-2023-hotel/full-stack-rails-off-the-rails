class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
        @blogs = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.create(blog_params)
        if @blog.valid?
            redirect_to home_path
        end
    end
    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy    
            redirect_to home_path
        end
    end
    def edit
        @blog = Blog.find(params[:id])
    end
    def update 
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
          redirect_to home_path(@book)
        end
    end

    private
        def blog_params
            params.require(:blog).permit(:title, :content)
        end
end
