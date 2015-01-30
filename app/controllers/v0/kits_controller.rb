module V0
  class KitsController < ApplicationController

    def index
      @kits = Kit.all
      paginate json: @kits
    end

    def show
      @kit = Kit.find(params[:id])
      render json: @kit
    end

  end
end
