extends CanvasLayer

func _process(delta):
	$grabbed.text = "Points:  " +  str(Globals.point_score)
	$available.text = "Items Available:  " +  str(Globals.AvailableCol)

