class TodoList
  attr_reader :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end

  def delete_item(item_id)
    @items.delete_at(item_id - 1)
  end

  def toggle_item(item_id)
    @items[item_id - 1].toggle
  end

  def rename(new_title)
    @title = new_title
  end
end

class Item
  attr_reader :description, :completed_status

  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end

  def toggle
    @completed_status = !@completed_status
  end
end
