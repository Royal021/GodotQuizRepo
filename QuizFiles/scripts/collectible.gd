extends Area3D
func _ready():
	pass 


func _process(delta):
	pass

func _on_body_entered(hit_object):
	if hit_object.is_in_group("player"):
		hit_object.got_pickup(self)

func coll_die():
	queue_free()
