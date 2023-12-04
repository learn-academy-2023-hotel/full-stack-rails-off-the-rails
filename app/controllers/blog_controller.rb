class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
        @blogs = Blog.find(params[:id])
    end

    def new
        @blogs = Blog.new
      end
end
