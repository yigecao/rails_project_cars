class ArticlesController < ApplicationController

	def index

		@articles = Article.all

	    params.permit!

	    order = params[:articleVotes]
	    showStatus = params[:commit]

	    case showStatus
	    when "Show"
    		case order
    		when '1'
    			if params[:articleYear] == "" && params[:articleRegion] == ""
    				@articleSelect = Article.order(votes: :desc)
    			elsif params[:articleYear] == ""
    				@articleSelect = Article.where(region: params[:articleRegion]).order(votes: :desc)
    			elsif params[:articleRegion] == ""
    				@articleSelect = Article.where(year: params[:articleYear]).order(votes: :desc)
    			else
    				@articleSelect = Article.where(year: params[:articleYear]).where(region: params[:articleRegion]).order(votes: :desc)
    			end

    		when '2'
    			if params[:articleYear] == "" && params[:articleRegion] == ""
    				@articleSelect = Article.order(votes: :asc)
    			elsif params[:articleYear] == ""
    				@articleSelect = Article.where(region: params[:articleRegion]).order(votes: :asc)
    			elsif params[:articleRegion] == ""
    				@articleSelect = Article.where(year: params[:articleYear]).order(votes: :asc)
    			else
    				@articleSelect = Article.where(year: params[:articleYear]).where(region: params[:articleRegion]).order(votes: :asc)
    			end
    		end
	    	
	   	when "Show All"
	   		@articleSelect = Article.all
	    end

	    respond_to do |format|
	    	format.js
	    	format.html {render "index"}
	    end

	end


	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(articles_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.save
			redirect_to @article
		else
			redirect_to 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to article_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :author, :body, :year, :votes, :image)#need to add more fields
		end
end
