canvasSize = 512
bgColor = c_white;

canvasX1 = 144;
canvasY1 = 100;

cellSize = canvasSize / global.dimension
show_debug_message(cellSize);


enum modes {
	DRAW,
	ERASE
}

currentMode = modes.DRAW;

for (var i = 0; i < global.dimension; ++i) {
    for (var j = 0; j < global.dimension; ++j) {
		var xx = canvasX1 + i * cellSize;
		var yy = canvasY1 + j * cellSize;
		instance_create_layer(xx, yy, "Instances", obj_cell);
	}
}

palleteX = canvasX1 + canvasSize + 30;
palleteY = canvasY1;
pickerSize = 30;

pallete = array_create(16)
pallete[0] = $2c1c1a;
pallete[1] = $5d275d;
pallete[2] = $533eb1;
pallete[3] = $577def;
pallete[4] = $75cdff;
pallete[5] = $70f0a7;
pallete[6] = $64b738;
pallete[7] = $797125;
pallete[8] = $6f3629;
pallete[9] = $c95d3b;
pallete[10] = $f6a641;
pallete[11] = $f7ef73;
pallete[12] = $f4f4f4;
pallete[13] = $c2b094;
pallete[14] = $866c56;
pallete[15] = $573c33;

for (var i = 0; i<array_length_1d(pallete); ++i) {
	var xx = palleteX;
	var yy = palleteY + i * pickerSize; 
	var picker = instance_create_layer(xx, yy, "Instances", obj_colorpick);
	picker.color = pallete[i];
}

instance_create_layer(canvasX1, 20, "Instances", obj_btn_draw);
instance_create_layer(canvasX1 + 250, 20, "Instances", obj_btn_erase);

drawColor = pallete[0];