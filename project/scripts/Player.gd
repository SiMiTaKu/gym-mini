extends CharacterBody2D

# FYI: まずは触り心地を固めるため、横移動は自動で一定速度にしています。

const FLOOR_SNAP_LENGTH: float = 24.0
const INITIALIZE_MOVE_SPEED: float = 220.0
const JUMP_VELOCITY: float = -520.0
const MAX_FALL_SPEED: float = 1800.0
const MAX_JUMP_COUNT: int = 2

var jumps_done: int = 0
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready() -> void:
	# REMARK: 床すり抜け防止のためスナップ長を設定
	floor_snap_length = FLOOR_SNAP_LENGTH


func _physics_process(delta: float) -> void:
	_apply_gravity(delta)
	_apply_jump()
	_apply_horizontal_move()
	move_and_slide()
	_reset_jump_on_floor()


func _apply_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
		if velocity.y > MAX_FALL_SPEED:
			velocity.y = MAX_FALL_SPEED


func _apply_jump() -> void:
	if not Input.is_action_just_pressed("jump"):
		return
	# REMARK: 落下開始後（下降中）は二段ジャンプを禁止
	var is_falling: bool = velocity.y > 0.0 and not is_on_floor()
	if jumps_done >= MAX_JUMP_COUNT:
		return
	if jumps_done == 1 and is_falling:
		return
	velocity.y = JUMP_VELOCITY
	jumps_done += 1


func _apply_horizontal_move() -> void:
	velocity.x = INITIALIZE_MOVE_SPEED


func _reset_jump_on_floor() -> void:
	if is_on_floor():
		jumps_done = 0
