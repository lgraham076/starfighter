extends RigidBody2D

@export var level = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	# TODO: Verify number of animations
	$AnimatedSprite2D.play("Boss" + str(level))
	$AnimatedSprite2D.flip_v = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func change_boss(new_level):
	level = new_level
	
func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
