extends Node
var Damage : int
var speed : int 
var range : int
var tiles : int
var directionNumber : int
var direction : Vector2 
var cardSelect : int
enum cardType{
	heavy,
	attack,
	block,
	move,
	dodge
}
@onready var label =$RichTextLabel

func _init(C_Name):
	
	
	
	match cardType:
		cardType.heavy:
			label.text = "Heavy Attack"
			print("skibidiHeavy")
			Damage = 10
			speed = 0
			range = 1
			
		cardType.attack:
			print("skibidiAttack")
			label.text = "Slash"
			Damage = 5
			speed = 1
			range = 1
		cardType.block:
			print("skibidiBlock")
			label.text = "block"
			
		cardType.move:
			label.text = "Movement"
			print("skibidimove")
			tiles = randi_range(1, 3)
			directionNumber = randi_range(1,4)
			match directionNumber:
				1:
					direction = Vector2.UP
				2:
					direction = Vector2.DOWN
				3: 
					direction = Vector2.LEFT
				4:
					direction = Vector2.RIGHT
