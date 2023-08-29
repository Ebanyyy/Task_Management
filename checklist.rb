class Checklist
	def initialize
		@lists = []
		@status = false
		@note = nil
	end

	def adding_list(list)
		@lists << list
		puts "Adding: #{list}"
	end

	def removing_list(list)
		if @lists.include?(list)
			@lists.delete(list)
			puts "#{list} has been removed."
		else
			puts "#{list} is not on the list."
		end
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
			@lists.each_with_index { |list, index| puts "#{index + 1}. #{list}"}
		end
	end
end

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
checklist.display_lists