class_name Deck extends Node

var folderManager = load("res://src/utils/folderManager.gd").new()

var deck: Array = []
const SIZE: int = 30
const COLLECTION_PATH: String = "res://src/deck/collection/"

func get_deck()-> Array:
	var collection = folderManager.get_directory_list(COLLECTION_PATH)
	for i in SIZE:
		deck.append(load(COLLECTION_PATH + collection[randi() % collection.size()]).new())
	return deck