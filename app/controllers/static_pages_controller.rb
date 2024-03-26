class StaticPagesController < ApplicationController
    def index
        @static_pages = StaticPage.all
        @flickr = Flickr.new
    end

    def new
        @static_page = StaticPage.new
    end

    def create
        @static_page = StaticPage.new(static_page_params)
        if @static_page.save
            redirect_to @static_page
        else
            render 'new'
        end
    end

    def show
        @static_page = StaticPage(params[:id])
    end
end
