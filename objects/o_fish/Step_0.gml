x += spd*dir;

if x-sprite_width/2 < -32 or x+sprite_width/2 > room_width+32 {
	instance_destroy();	
}