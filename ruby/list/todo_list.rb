class TodoList
	def initialize(list_items)
		@list_arr = list_items
	end
	def get_items
		@list_arr
	end
	def add_item(item_to_add)
		@list_arr << item_to_add
	end
	def delete_item(item_to_delete)
		@list_arr.delete(item_to_delete)
	end
	def get_item(item_index)
		@list_arr[item_index]
	end
end