// This section flips the character's sprite depending on whether it's moving left or right.
// This condition checks if the X velocity is less than 0, meaning the character is moving left.
if (vel_x < 0)
{
	// In that case, the horizontal scale of the instance is set to -1. This flips the sprite the other way around,
	// making it face left.
	image_xscale = -1;
	image_yscale = 1;
}
// Otherwise - if the character is not moving left, this checks if the X velocity is greater than 0, meaning the character is moving right.
else if (vel_x > 0)
{
	// In that case, the horizontal scale is set to 1, so the character faces right again.
	image_xscale = 1;
	image_yscale = 1;
}

// This checks if the character's health is at, or below, 0, meaning it has been defeated.
// In that case we want to replace the character instance with its defeated object.
if (hp <= 0)
{
	room_goto(rm_menu)
}

// This checks if no_hurt_frames is greater than 1, meaning the character is currently invincible and can't be hurt.
if (no_hurt_frames > 0)
{
	// In that case we reduce the variable by 1, as one frame as passed. Eventually it will reach 0 again and the character will be able
	// to be hurt.
	no_hurt_frames -= 1;

	// This part handles making the character flash on and off when it's invincible, by changing its alpha between 0 and 1.
	// If the remainder of no_hurt_frames divided by 12 is above 6, we'll set the alpha to 0.
	// Otherwise we'll set it to 1.
	if (no_hurt_frames % 12 > 6)
	{
		// This makes the character invisible.
		image_alpha = 0;
	}
	else
	{
		// This makes the character visible again.
		image_alpha = 1;
	}
}