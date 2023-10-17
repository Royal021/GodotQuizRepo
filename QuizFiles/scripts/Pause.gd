extends Control


func _process(delta):
	if(get_tree().paused == true):
		self.show()
			
func _on_quit_button_pressed():
	get_tree().quit()

func _on_button_pressed():
	self.hide()
	get_tree().paused = false
