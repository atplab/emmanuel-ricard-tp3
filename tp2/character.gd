extends CharacterBody2D


const SPEED = 270.0
const JUMP_VELOCITY = -500.0

enum Etat {
	REPOS,
	MARCHE,
	SAUT
}

var etat_courant = Etat.REPOS

func _physics_process(delta: float) -> void:
	#conditions SAUT
	if not is_on_floor():
		etat_courant = Etat.SAUT
	#condition repos
	if is_on_floor() and velocity.x == 0:
		etat_courant = Etat.REPOS
	#marche
	if is_on_floor() and velocity.x != 0:
		etat_courant = Etat.MARCHE
	 
	if etat_courant == Etat.SAUT:
		
		$joueur.play("jump")
		
		# ajouter la graviter quand je saute
	if not is_on_floor():
		velocity += get_gravity() * delta
	if etat_courant == Etat.REPOS:
		$joueur.play("idle")
		#transition marche - saut
	if etat_courant == Etat.MARCHE:
		$joueur.play("walk")
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		$jump.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if velocity.x > 0:
		$joueur.flip_h = false
	if velocity.x < 0:
		$joueur.flip_h = true


	move_and_slide()



	
 
