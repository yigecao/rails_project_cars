class ArticlesController < ApplicationController

	def index
	    @articles = Article.all
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
			params.require(:article).permit(:title, :author, :body)#need to add more fields
		end
end
