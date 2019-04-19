class CartController < ApplicationController
  
  before_action :authenticate_user!
  
  
  def add
    id = params[:id]
    
    if session[:cart] then
      
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    
  
    
    if cart[id] then
    
    cart[id] = cart[id] + 1 
  else
    
    cart[id] = 1
    
    end
    
    redirect_to :action => :index
    
  end 
  
  
    def clearCart
    
    session[:cart] = nil
    redirect_to :action => :index
    end 
    
    
    
  def remove
    
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    
    redirect_to :root
  end
  
  def decrease
    
    id = params[:id]
    cart = session[:cart]
    if cart[id] == 1 then
       cart.delete id
     else
     cart[id] = cart[id] - 1
    end
     
    redirect_to :action => :index
    
  end



  
  
  
  
  
  
  
  def index
    
    
    if session[:cart] then
      @cart = session[:cart] 
     else 
       @cart = {} 
       
    end  
    
  end
  
  
  
  
  def createOrder
 
 @user = User.find(current_user.id)

 
 @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
 @order.save

 
 @cart = session[:cart] || {} 
 @cart.each do | id, quantity |
 jersey = Jersey.find_by_id(id)
 @orderjersey = @order.orderjerseys.build(:jersey_id => jersey.id, :size => jersey.size, :description => jersey.description, :quantity => quantity, :price=> jersey.price)
 @orderjersey.save
 end
 
 @orders = Order.all
 
 @orderjerseys = Orderjersey.where(order_id: Order.last)
 session[:cart] = nil
 
  end
  
  
  
  
  
  
  
  
  
end

