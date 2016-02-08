class HomeController < ApplicationController
  require 'factual'
  def index
    # byebug
    if params['get_data'].present?
      factual = Factual.new("Dx0l48S0qhMLi89bM2B8Lmw3jaWx2sBwlVeabK5h", "eKqeP0bLxaVB70AEcMbZhsV98ypoyQVT2oEThXeu")
      @result =  factual.table("places-us").search(params['get_data'])
    end
    
  end
end
