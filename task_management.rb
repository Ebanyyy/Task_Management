class Task
	attr_accessor :description

	def initialize(description)
		@description = description
		@due_date = nil
		@assign_to = []
	end

	def assign_user(name)
		@assign_to << name
	end

	def due_date(date)
		@due_date = date 
	end
end


class Checklist
	def initialize
		@lists = []
		@status = false
		@note = nil
	end

	def adding_list(title)
		title = Task.new(title)
		@lists << title
		puts "Adding: #{title.description}"
	end

	def removing_list(title)
		@lists.reject! { |list| list.description == title } #'!' means to return back the list
		puts "#{title} has been removed."
	end

	def status?
		@status = "Completed"
	end

	def add_note(note)
		@note = note 
	end

	def display_lists
		if @lists.empty?
			puts "Empty."
		else
			puts "To-do list:"
			@lists.each_with_index { |title, index| puts "#{index + 1}. #{title.description}"}
		end
	end
end


# task = Task.new("List of the day")
# puts task.description
# puts "---"
# puts "Assign to?"
# puts task.assign_user("Bany")
# puts "---"
# puts "Due date:"
# puts task.due_date("Tuesday: 11.59pm")
# puts task
puts "---"
checklist = Checklist.new
checklist.adding_list("Do assignment")
checklist.adding_list("Take medicine")
checklist.adding_list("Do report")
checklist.display_lists
puts "---"
puts "Lists status:"
puts checklist.status?
puts "---"
puts "Any notes to add?"
puts checklist.add_note("Make a new list")
puts "---"
puts "Remove list:"
puts checklist.removing_list("Do assignment")
checklist.adding_list("Do research")
puts "---"
checklist.display_lists
