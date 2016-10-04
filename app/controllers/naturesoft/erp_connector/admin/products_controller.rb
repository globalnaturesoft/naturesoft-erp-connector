module Naturesoft
  module ErpConnector
    module Admin
      class ProductsController < Naturesoft::Admin::AdminController
        def index
          url = Option.get("erp_connector", "erp_product_url") + 
                "?keyword=" + 
                URI.encode(params[:keyword].to_s) + 
                "&page=" +
                URI.encode(params[:page].to_s)
          begin
            resp = Net::HTTP.get_response(URI.parse(url))
            data = resp.body
            @products = JSON.parse(data)
          rescue
            render text: "Cannot connect to ERP server: " + url
          end
        end
      end
    end
  end
end
