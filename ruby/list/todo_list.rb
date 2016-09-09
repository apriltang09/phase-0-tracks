class TodoList
	def initialize(get_items)
		@get_items = get_items

	end

	def get_items
		@get_items
	end

	def add_item(item)
		@get_items << item
	end

	def delete_item(item)
		@get_items.delete(item)
	end

	def get_item(num)
		@get_items.fetch(num)
	end

end

