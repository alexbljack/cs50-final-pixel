var mx = mouse_x;
var my = mouse_y;

mouseHover = (mx > x and mx < x + 50 and my > y and my < y + 30);

if (mouseHover and mouse_check_button_pressed(mb_left)) {
	obj_canvas.drawColor = color;
	with (obj_colorpick) {
		self.selected = false;
		other.selected = true;
	}
}