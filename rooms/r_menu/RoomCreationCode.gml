var dimensions = [8, 16, 32];

var btnsX = room_width * 0.5 - sprite_get_width(spr_button) * 0.5;
var btnsY = 250;
var btnsOffset = 30;

for (var i = 0; i < array_length_1d(dimensions); ++i) {
	var btnY = btnsY + i * (sprite_get_height(spr_button) + btnsOffset);
    var btn = instance_create_layer(btnsX, btnY, "Instances", obj_btn_start);
	var d = dimensions[i];
	btn.dimension = d;
	btn.text = string(d) + "x" + string(d);
}