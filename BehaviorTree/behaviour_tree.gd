class_name BehaviourTree extends Node

@export var root: BTNode

func _ready() -> void:
    if not root:
        for child in get_children():
            if child is BTNode:
                root = child
                break


func _process(delta: float) -> void:
    if root:
        root.tick(delta)