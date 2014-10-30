Spree::Admin::ProductsController.class_eval do
  def related
    load_resource
    p_taxons = @product.taxons
    @products = {}
    p_taxons.each do |t|
      @products[t.name] = t.products
    end
    @relation_types = Spree::Product.relation_types
  end
end
