extends Area2D
@onready var label = $Control/Label
var mc_masuk = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if mc_masuk == true and Input.is_action_just_pressed("Take_Items"):
		queue_free()
	pass


func _on_body_entered(body):
	if body.name == "MC":
		mc_masuk = true
		label.visible = true
		
		
		
	




func _on_body_exited(body):
	if body.name == "MC":
		mc_masuk = false
		label.visible = false

