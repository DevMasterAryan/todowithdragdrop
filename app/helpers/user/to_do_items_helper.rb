module User::ToDoItemsHelper
	def select_category
		Category.pluck(:name,:id)
	end
end
