extends Resource

class_name MarketResource

@export var icon: Texture2D
@export var quantity := 100
@export var price := 1

var total_per_round := 0

func _on_new_round():
    total_per_round = 0

func get_max_buyable() -> int:
    var max_affordable := floori((GameManager.points as float) / (price as float))

    return max_affordable if max_affordable < quantity else quantity