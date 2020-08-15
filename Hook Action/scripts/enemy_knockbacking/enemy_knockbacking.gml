//敵ノックバック中

h_speed += lengthdir_x(knockback_speed, knockback_direction);
v_speed += lengthdir_y(knockback_speed, knockback_direction);


knockback_speed *= 0.95;
knockback_speed -= 0.05;

if(knockback_speed > 0){
	//ノックバック終了
	knockback_enable = false;
	knockback_speed = 0;
	knockback_speed_default = 0;
	
	knockback_direction = 0;
	knockback_direction_default = 0
}


