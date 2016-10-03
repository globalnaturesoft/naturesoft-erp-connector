Naturesoft::ErpConnector::Engine.routes.draw do
  namespace :admin, module: "admin" do
    get "admin/erp_connector/products" => "products#index", as: :products
  end
end