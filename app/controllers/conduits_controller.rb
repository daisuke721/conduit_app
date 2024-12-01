class ConduitsController < ApplicationController
  before_action :set_conduit, only: [:show, :edit, :update, :destroy]
  def index
    @conduits = Conduit.all
  end

  def new
    @conduit = Conduit.new
  end

  def create
    @conduit = Conduit.new(params.require(:conduit).permit(:title, :introduction, :context, :tag))
    if @conduit.save
      flash[:notice] = "登録しました"
      redirect_to conduits_index_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @conduit.update(params.require(:conduit).permit(:title, :introduction, :context, :tag))
      flash[:notice] = "更新しました"
      redirect_to conduits_index_path
    else
      render :edit
    end
  end

  def destroy
    @conduit.destroy
    flash[:notice] = "削除しました"
    redirect_to conduits_index_path
  end

  private

  def conduit_prams
    params.require(:conduit).permit(:title, :introduction, :context, :tag)
  end

  def set_conduit
    @conduit = Conduit.find(params[:id])
  end
end
