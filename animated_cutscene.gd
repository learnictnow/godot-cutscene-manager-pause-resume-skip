extends Node3D

@export_file("*.tscn") var scene_name

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("animation_example")
	$PauseUI.pause_cutscene.connect(_handle_pause)
	#print($PauseUI.pause_cutscene)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "animation_example":
		print("Animation Example finished")
		get_tree().change_scene_to_file(scene_name)
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("pause"):
		print("Pause pressed")
		if !$PauseUI.visible:
			get_tree().paused = !get_tree().paused
			$PauseUI.visible = true

func _handle_pause():
	print("Handling pause")
	$PauseUI.visible = false
	get_tree().paused = false
