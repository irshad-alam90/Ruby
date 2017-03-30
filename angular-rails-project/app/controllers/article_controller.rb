class ArticlesController < ApplicationController

	def index
		@articles = Article.all 
		render json: @articles
	end

	def show
		@article = Article.find(params[:id])
		render json: @article
	end

=begin
	def new
		@article = Article.new
		respond_to do |f|
      	#f.html { render :index }
      	f.json { render json: @articles }
	end


def create
		#render plain: params[:article].inspect
		@article = Article.new(article_params)
		@article.user = User.first
		if @article.save
			flash[:notice] = "Article was successfully created"
			redirect_to articles_path(@article)
		else
			render 'new'
		end
	end 

	def show
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			flash[:notice] = "Article successfully updated"
			redirect_to articles_path(@article)
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash[:notice] = "Article was successfully deleted"
		redirect_to articles_path
	end

	

	def edit
		@article = Article.find(params[:id])
	end

	private 
	def article_params
		params.require(:article).permit(:title, :description)
	end
	=end

end 
