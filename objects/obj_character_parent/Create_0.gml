move_speed = 8;
friction_power = 0.7;
jump_speed = 23;
grav_speed = 0.7;
vel_x = 0;
vel_y = 0;



grounded = false; //Can Jump
grounded_x = x;
grounded_y = y;

can_dash = false;
dash_distance = 96; 
dash_time = 12;





// 'max_hp' is the maximum health for the
// character.
// 'hp' is the actual health of the character.
// It's initialised at the same value as 'max_hp'.
max_hp = 3;
hp = max_hp;

// This variable is used to grant the player invincibility, after it's hit by an enemy or after it falls off ground.
// It stores the remaining number of frames where the player can't be hurt. If it's 0, it means the player is not invincible.
no_hurt_frames = 0;

// This is the object that replaces the character once it is defeated. By default it's set to 'obj_player_defeated'
// and its value may be changed in a child object.
defeated_object = obj_player_defeated;