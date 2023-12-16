extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_resume_pressed():
	print("Resume pressed")
	get_tree().paused = false
	hide()
	pass # Replace with function body.


func _on_button_exit_pressed():
	print("Exit pressed")
	GameManager.quit_game()
	pass # Replace with function body.
