class CategoriesController < ApplicationController
<<<<<<< HEAD
  include CategoryHelper
  before_filter :is_admin?, except: [:index, :show]
=======
  before_filter :is_admin?, :except => [:index, :show]
>>>>>>> added all actions for categories controller, move on to create views

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to categories_path(@category)
    else
      render :edit
<<<<<<< HEAD
    end
=======
>>>>>>> added all actions for categories controller, move on to create views
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end

  private
    def category_params
      params.require(:category).permit(:title)
    end
end
