if array_length(caught) == 0 {
	if irandom(99) < o_player.grab_fish_chance {
		if descendo or arrive {
			descendo = false;
			arrive = true;
			array_push(caught, other.id);
			other.y = y;
			other.spd = 0;
			other.grab = true;
		}
	}
}