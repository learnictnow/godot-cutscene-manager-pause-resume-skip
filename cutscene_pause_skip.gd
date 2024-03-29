extends Node3D

@export_file("*.tscn") var scene

# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.menu_displayed = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "splash":
		print("Animation Splash finished")
		get_tree().change_scene_to_file(scene)
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("skip"):
		GameManager.skip_scene(scene)
