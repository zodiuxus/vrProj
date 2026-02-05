extends Control

@onready var vbox = $introbtns
@onready var vWorld = get_node("SubViewport/World")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	vWorld.loadPlayer = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main/world.tscn")

func _on_info_pressed() -> void:
	vbox.visible = false
	$infoscreen.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit(0)

func _on_back_pressed() -> void:
	vbox.visible = true
	$infoscreen.visible = false
