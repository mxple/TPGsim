#macro VIEW view_camera[0]
#macro VIEW_W camera_get_view_width(VIEW)
#macro VIEW_H camera_get_view_height(VIEW)

#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()

enum CONDITIONS {
	NONE,
	BLEED,
	PIERCE,
	CURSE
}

enum SHADE_STATES {
	CHASING,
	RESET
}