extends Control

@export_file("*.tscn") var scene

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_play_pressed():
	print("Play pressed")
	get_tree().change_scene_to_file(scene)
	pass # Replace with function body.


func _on_button_exit_pressed():
	GameManager.quit_game()
	pass # Replace with function body.
