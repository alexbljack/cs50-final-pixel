var bg = obj_canvas.bgColor;
if not mouseHover {
	if not color {
		draw_rectangle_color(x, y, x + size-2, y + size-2, c_gray, c_gray, c_gray, c_gray, true);
		draw_rectangle_color(x, y, x + size-2, y + size-2, bg, bg, bg, bg, false);
	} else {
		draw_rectangle_color(x, y, x + size-2, y + size-2, color, color, color, color, false);
	}
} else {
	if obj_canvas.currentMode == modes.ERASE {
		draw_rectangle_color(x, y, x + size-2, y + size-2, c_gray, c_gray, c_gray, c_gray, true);
		draw_rectangle_color(x, y, x + size-2, y + size-2, bg, bg, bg, bg, false);
	} else {
		var c = obj_canvas.drawColor;
		draw_rectangle_color(x, y, x + size-2, y + size-2, c, c, c, c, false);
	}
}