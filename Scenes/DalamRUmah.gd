extends Node2D 


var area:bool

var posisi:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if area == true and Input.is_action_just_pressed("Open_Door"):
		posisi = true
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
		
	
	pass


func _on_area_2d_body_entered(body):
	if body.name == "MC":
		area = true
	pass # Replace with function body.


func _on_area_2d_body_exited(body):
	if body.name == "MC":
		area = false
	pass # Replace with function body.
