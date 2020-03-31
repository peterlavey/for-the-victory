class_name Fireball extends Spell

func _init():
	cardName = "Fireball"
	illustration = "ñe"
	rarity = COMMON
	damage = 25
	scope = 10
	cost = 30
	element = FIRE
	effect = BURN
	accuracy = 0.33
	description = "Lanza una bola de fuego a un enemigo, tiene un 33% de probabilidad de sufrir quemaduras."