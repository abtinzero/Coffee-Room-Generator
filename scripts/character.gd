extends CharacterBody3D

var gravity = 10
@onready var anim : AnimationPlayer = get_node("Baolo").get_node("AnimationPlayer")
@onready var anim2 : AnimationPlayer = get_node("Buca").get_node("AnimationPlayer")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	play_rand_animation(anim)
	play_rand_animation(anim2)
	move_and_slide()

func play_rand_animation(anim: AnimationPlayer):
	if !anim.is_playing():
		var animation_list = anim.get_animation_list()
		var random_animation = animation_list[randi() % animation_list.size()]
		anim.play(random_animation)
