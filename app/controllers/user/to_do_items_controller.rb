class User::ToDoItemsController < ApplicationController
	before_action :authenticate_user!
	
	def index
	  @items = current_user.to_do_items.order(:sort)	
	end

	def new
	  @item  = ToDoItem.new	
	end

	def create
      @items = current_user.to_do_items.new(to_do_params)
      if @items.save
        flash[:notice] = "To Do created successfully."
        redirect_to 
      end 		
	end

	def completed
		@item  = ToDoItem.find_by(id: params[:id])
		if @item.is_completed?
           @item.update(is_completed: false)
		else
		  @item.update(is_completed: true)	
		end

	end

	private
	def to_do_params
		params.require(:to_do_item).permit(:name, :due_date, :category_id)
	end
end
