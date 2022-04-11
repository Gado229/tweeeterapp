class TwitsController < ApplicationController
      before_action :set_twit, only: [:show, :edit, :update, :destroy]

    def index
      @twit = Twit.all
    end

    def new
      @twit = Twit.new
    end

    def show
      @twit.destroy
      redirect_to twits_path, notice: "Le Tweet est supprimé !"
    end

    def edit
    end

    def create
      @twit = Twit.new(twit_params)
      if params[:back]
        render :new
      else
        if @twit.save
          redirect_to twits_path, notice: "Le Tweet est créé !"
        else
          render :new
        end
      end
    end

    def update
      if @twit.update(twit_params)
        redirect_to twits_path, notice: "Le Tweet est modifié !"
      else
        render :edit
      end
    end

    def confirm
      @twit = Twit.new(twit_params)
      render :new if @twit.invalid?
    end

    private

    def twit_params
      params.require(:twit).permit(:title, :content)
    end

    def set_twit
      @twit = Twit.find(params[:id])
    end
end
