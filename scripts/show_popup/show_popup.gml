function show_popup(){
	/// show_popup(_x, _y, _text, _color, _life, _vx, _vy, _font)
	var _o = instance_create_layer(argument0, argument1, "Instances", o_popup);
	_o.text     = string(argument2);
	_o.color    = argument3;
	_o.max_life = argument4;
	_o.life     = _o.max_life;
	_o.vx       = argument5;
	_o.vy       = argument6;
	_o.font     = argument7;

}