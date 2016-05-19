class ArticlesController < ApplicationController #has to be camelcase
  def new
      @article=Article.new
  end
  
  def create
    @article=Article.new(article_params)
    if @article.save
      #do something
      flash[:notice] = "article was successfuly created"
      redirect_to article_path(@article) 
    else 
      render 'new'
    end
  end
  
  
  
  def show
    @article = Article.find(params[:id])
  end  
  
  def edit 
    @article = Article.find(params[:id])
  end
  
  def update 
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice]="artical has been successfuly edited"
      redirect_to article_path(@article) 
    else
      render 'edit'
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title,:description)
    end
end