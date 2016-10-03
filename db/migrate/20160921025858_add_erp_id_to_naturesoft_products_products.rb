class AddErpIdToNaturesoftProductsProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :naturesoft_products_products, :erp_id, :integer
  end
end
