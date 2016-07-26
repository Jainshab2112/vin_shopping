class ProductsController < InheritedResources::Base
  before_filter :authenticate_user!

  private

    def product_params
      params.require(:product).permit(:name, :description, :active, :image)
    end
end

