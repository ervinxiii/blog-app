class Api::CategoriesController < ApiController
  def index
    render json: Category.all
  end

  def create
    category = Category.new category_params

    if category.save
      render json: category, status: 200
    else
      render json: category, status: 400
    end
  end

  def update
    category = Category.find params[:id]

    if category.update category_params
      render json: category, status: 200
    else
      render json: category, status: 400
    end
  end

  def destroy
    category = Category.find params[:id]

    if category.destroy
      render json: category, status: 200
    else
      render json: category, status: 400
    end
  end

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
