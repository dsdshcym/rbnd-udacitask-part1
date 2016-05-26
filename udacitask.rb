require_relative 'todolist.rb'

# Creates a new todo list
my_list = TodoList.new("My Todo List")

# Add four new items
%w(First Second Third Fourth).each do |title|
  my_list.add_item(title)
end

# Print the list
my_list.print

# Delete the first item
my_list.delete_item(1)

# Print the list
my_list.print

# Delete the second item
my_list.delete_item(2)

# Print the list
my_list.print

# Update the completion status of the first item to complete
my_list.toggle_item(1)

# Print the list
my_list.print

# Update the title of the list
my_list.rename("My NEW Todo List")

# Print the list
my_list.print
