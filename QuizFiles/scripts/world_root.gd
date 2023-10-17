extends Node3D

@export var collectable: PackedScene
var collectable1 = load("res://scenes/collectible.tscn")


var timer = 1.0

func _process(delta):
	if(timer <0.0):
		if(Globals.AvailableCol<Globals.maxCol):
			var new_coll = collectable1.instantiate()
			$colContainer.add_child(new_coll)
			new_coll.global_position = $colContainer.global_position + Vector3(randi_range(-20,20),0, randi_range(-20,20))
			new_coll.global_rotation = global_rotation
			Globals.AvailableCol+=1
			timer = 1
	else:
		timer-=delta
