extends Node

@onready var pausemenu = $PauseMenu
@export_file("*.tscn") var main_menu

@export var lives: int
@export var high_score: int

var menu_displayed = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		print("Button pressed")
		if !menu_displayed:
			print("No menu")
			menu_displayed = true
			pausemenu.visible = true
			get_tree().paused = true
		elif pausemenu.visible:
			menu_displayed = false
			pausemenu.visible = false
			get_tree().paused = false
	pass

func quit_game():
	get_tree().quit()

func display_main_menu():
	menu_displayed = true
	get_tree().paused = false
	get_tree().change_scene_to_file(main_menu)

func skip_scene(scene):
	get_tree().change_scene_to_file(scene)
