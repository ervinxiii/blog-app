class Api::BlogsController < ApiController
  def index
    render json: Blog.all
  end

  def create
    blog = Blog.new blog_params

    if blog.save
      render json: blog, status: 200
    else
      render json: blog, status: 400
    end
  end

  def update
    blog = Blog.find params[:id]

    if blog.update blog_params
      render json: blog, status: 200
    else
      render json: blog, status: 400
    end
  end

  def destroy
    blog = Blog.find params[:id]

    if blog.destroy
      render json: blog, status: 200
    else
      render json: blog, status: 400
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
