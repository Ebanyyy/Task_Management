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


task = Task.new("Task Management")
puts task.description
puts "Status?"
puts task.completed?
puts "---"
puts "Assign to?"
puts task.assign_user("Bany")
puts "Due date:"
puts task.due_date("11.59pm")

