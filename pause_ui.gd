extends Control

signal pause_cutscene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	emit_signal("pause_cutscene")
	print("Paused pressed")
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("pause"):
		print("Paused - Pause pressed")
		emit_signal("pause_cutscene")
