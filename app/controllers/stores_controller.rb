class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.user_id = current_user.id
    if @store.save
      redirect_to store_path(@store), notice: "投稿しました"
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
    if @store.user != current_user
      redirect_to store_path, alert: "不正なアクセスです"
    end
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to store_path(@store), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    store = Store.find(params[:id])
    if store.user == current_user
      store.destroy
      redirect_to store_path
    else
      redirect_to store_path, alert: "不正なアクセスです"
    end
  end

  private
  def store_params
    params.require(:store).permit(:name, :body, :address, :image)
  end
end
