extends Node2D
@onready var mobile = $"../Tombol_Gerak"
var kalikali = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pencet") and kalikali == 0:
		mobile.visible = true
		kalikali = 1
	elif Input.is_action_just_pressed("pencet") and kalikali == 1:
		mobile.visible = false
		kalikali = 0
	
		
	
		
	
