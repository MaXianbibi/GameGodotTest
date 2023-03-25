extends CharacterBody2D

const MAX_SPEED = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = getDirectionToPlayer()
	velocity = direction * MAX_SPEED
	move_and_slide()

func getDirectionToPlayer():
	var playerNode = get_tree().get_first_node_in_group("player") as Node2D
	if playerNode:
		return (playerNode.global_position - global_position).normalized()
	return (Vector2.ZERO)
	
