@tool
extends Sprite2D

@export var mesh_tex: MeshTextureRD:
	get: return mesh_tex
	set(value):
		mesh_tex = value
		texture = value

func _enter_tree() -> void:
	if mesh_tex == null:
		return
	mesh_tex._init()
	mesh_tex.update(true)

func _exit_tree() -> void:
	mesh_tex.destroy()
	RenderingServer.free_rid(mesh_tex.get_rid())
