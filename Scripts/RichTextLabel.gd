extends RichTextLabel

@onready var enemy := get_tree().get_nodes_in_group("Enemy")[0]

# Called when the node enters the scene tree for the first time.
func _ready():
	# Set the text to "Hello, world!" in bold and red
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if enemy.currentState == 0:
		text = "Patrolling"
	elif enemy.currentState == 1:
		text = "Chasing"
	elif enemy.currentState == 2:
		text = "Hunting"
	elif enemy.currentState == 3:
		text = "Waiting"
	pass
