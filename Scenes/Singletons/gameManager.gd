extends Node

var gameScene: PackedScene = preload("res://Scenes/Game/Game.tscn")
var mainScene: PackedScene = preload("res://Scenes/Main/main.tscn")

func LoadGameScene() -> void:
	get_tree().change_scene_to_packed(gameScene)

func LoadMainScene() -> void:
	get_tree().change_scene_to_packed(mainScene)
