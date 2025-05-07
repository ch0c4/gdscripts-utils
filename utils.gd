extends Node

func instantiate_scene_on_level(scene: PackedScene, position: Vector2) -> Node:
	var node: = scene.instantiate()
	var main: = get_tree().current_scene
	node.position = position
	if main is World:
		var level: = main.current_level
		if level:
			level.add_child(node)
		else:
			# NOTE: This is a fallback to try and make the function work if there is no level
			main.add_child(node)
	return node