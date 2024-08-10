extends Area2D
var bodyin
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if bodyin == true and Input.is_action_just_pressed("Open_Door"):
		#get_tree().change_scene_to_file("")
		print("buka pintu")
	
	pass


func _on_body_entered(body):
	if body.name == "MC":
		bodyin = true
		print("ew")
		
	


func _on_body_exited(body):
	if body.name == "MC":
		bodyin = false
		print("eee")
