def index
    @order_items = OrderItem.all
  end

  def show
    @order_items = OrderItem.find(params[:id])
  end

  def new
    @order_item = OrderItem.new
    @user = current_user
  end

  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order_item.user = current_user
    @order.user = current_user
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :coffee_id)
  end

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
