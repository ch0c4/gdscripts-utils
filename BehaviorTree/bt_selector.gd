class_name BTSelector extends BTComposite

var current_index := 0

func tick(delta: float) -> Status:
	var children = get_bt_children()
	while current_index < children.size():
		var status = children[current_index].tick(delta)
		match status:
			Status.SUCCESS:
				current_index = 0
				return Status.SUCCESS
			
			Status.RUNNING:
				return Status.RUNNING
			
			Status.FAILURE:
				current_index += 1
			
	current_index = 0
	return Status.FAILURE
