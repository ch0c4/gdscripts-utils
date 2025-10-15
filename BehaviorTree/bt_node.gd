class_name BTNode extends Node

enum Status { SUCCESS, FAILURE, RUNNING }

func tick(_delta: float) -> Status:
    push_warning("%s did not implement tick()" % name)
    return Status.FAILURE