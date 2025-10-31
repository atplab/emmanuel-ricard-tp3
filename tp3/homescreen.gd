extends Control


func _on_quitter_pressed() -> void:
	$pasquitter.visible = true
	$quitter.visible = false

func _on_pasquitter_pressed() -> void:
	$pasquitter.visible = false
	$quitter.visible = true
	$controles.visible = false


func _on_controles_pressed() -> void:
	$controles.visible = false

func _on_controls_pressed() -> void:
	$controles.visible = true


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_initiale.tscn")
