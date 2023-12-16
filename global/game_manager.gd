extends Node

@onready var pausemenu = $PauseMenu

@export var lives: int
@export var high_score: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		print("Button pressed")
		pausemenu.visible = true
		get_tree().paused = true
	pass

func quit_game():
	get_tree().quit()
