extends Control

@export_file("*.tscn") var scene_name

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file(scene_name)
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("pause"):
		print("Pause pressed")
		get_tree().paused = !get_tree().paused
		$PauseUI.visible = true
