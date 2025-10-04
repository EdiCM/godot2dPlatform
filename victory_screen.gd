extends CenterContainer

@onready var menu_button = %MenuButton
@onready var credits_button = %CreditsButton

func _ready():
	# Esta línea asegura que el botón de menú sea el primero en tener foco
	# para que el jugador pueda interactuar con él usando el teclado.
	LevelTransition.fade_from_black()
	menu_button.grab_focus()

func _on_menu_button_pressed():
	# Esta función cambia la escena a la del menú de inicio
	get_tree().change_scene_to_file("res://start_menu.tscn")

func _on_credit_button_pressed():
	# Esta función cambia la escena a la de los créditos
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
