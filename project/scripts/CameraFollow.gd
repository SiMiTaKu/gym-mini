extends Camera2D

# REMARK: 追従はX軸のみ。Y軸は固定で上下に動かさない。

@export var target_path: NodePath
@export var fixed_y: float = 0.0

var target: Node2D


func _ready() -> void:
	if fixed_y == 0.0:
		fixed_y = global_position.y
	if target_path != NodePath():
		target = get_node_or_null(target_path)
	if target == null:
		# REMARK: Camera2DはPlayerの兄弟ノードなので相対パスで取得する
		target = get_node_or_null("../Player")


func _process(_delta: float) -> void:
	if target == null:
		return
	global_position.x = target.global_position.x
	global_position.y = fixed_y
