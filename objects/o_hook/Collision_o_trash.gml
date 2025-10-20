if !subindo && !other.grab {
	var _current_catches = array_length(caught);

	if _current_catches < max_catch {
		if _current_catches == 0 {
			other.grab = true;
			other.y = y;
			array_push(caught, other.id)
			
            descendo = false; 
            arrive = true; 
		}else {
			var _first_item = caught[0]
			if instance_exists(_first_item) and _first_item.object_index == o_trash {
				other.grab = true;
				array_push(caught, other.id)
	            other.y = y; 
			}
			
		}
	}
}
