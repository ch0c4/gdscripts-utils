class_name BTComposite extends BTNode

func get_bt_children() -> Array[BTNode]:
    var nodes: Array[BTNode] = []
    for child in get_children():
        if child is BTNode:
            nodes.append(child)
    return nodes