var mx = mouse_x;
var my = mouse_y;

mouseHover = (mx > x and mx < x + size and my > y and my < y + size);

if (mouseHover and mouse_check_button(mb_left) and activated) {
	if obj_canvas.currentMode == modes.DRAW {
		color = obj_canvas.drawColor;
	}
	if obj_canvas.currentMode == modes.ERASE {
		color = noone;
	}
}