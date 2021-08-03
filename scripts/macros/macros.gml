function macros() {
	//システム系
#macro DEBUGMODE true//デバッグモード
#macro GAMESCREEN_WSIZE 320//幅
#macro GAMESCREEN_HSIZE 240//高さ

#macro WINDOW_SIZE_MAGNIFICATION 4//画面サイズ　倍率
#macro PLAYER_SPEED_DEFAULT 2

#macro OPPOSITEKEY_POWER_FOR_INERTIA 10

#macro FIRST_ROOM r_stage1


//敵
#macro SCRIPT_ASSASSIN_BRINK enemy_assassin_blink
#macro ENEMY_EFFECT_TOTAL_NUMBER 10//敵のエフェクトの総数
#macro BLUEAURA_HP_RATIO 4
#macro BLUEAURA_FIRE_COOLDOWN 0.5
#macro BLUEAURA_MOVEMENT_SPEED_RATIO 3
#macro BLUEAURA_ORB_QUANTITY_MAG 10

//エフェクト
#macro SLOW_TIME_LIMIT 180
#macro GAIN_SLOW_TIME_PER_FRAME 3
#macro ENEMY_DAMAGED_FLASH_TIME 7
#macro ENEMY_HITSTOP_TIME 5
#macro PLAYER_BULLET_HITSTOP_TIME 7
#macro AUDIO_SIMUL_DECAY_DEFAULT 0.66
#macro CURSE_POINT_LIMIT 120

//ステージ名
#macro STAGE1_NAME_JP "ヘルケイヴ"//"ヘル"+chr(13)+"ケイヴ"
#macro STAGE1_NAME_JP2 "地獄洞窟"
#macro STAGE1_NAME_EN "HELL"+chr(13)+"CAVE"

#macro FIRE_DAMAGE 30//炎の敵をフックしたときのダメージ

//細かいデータ等
#macro TACKLE_DAMAGE 5
#macro TACKLE_STUN_DAMAGE 100
#macro TACKLE_KNOCKBACK_SPEED 1.5
#macro TACKLE_REGIST_TIME_BASE 30

//ヘルモード/アシストモード
#macro HELL_ENEMY_DAMAGE_RATIO 1.5
#macro HELL_DOT_DAMAGE_RATIO 1.5
#macro HELL_PLAYER_DAMAGE_RATIO 0.66

#macro ASSIST_ENEMY_DAMAGE_LV0 1
#macro ASSIST_ENEMY_DAMAGE_LV1 0.75
#macro ASSIST_ENEMY_DAMAGE_LV2 0.5
#macro ASSIST_DOT_DAMAGE_LV0 1
#macro ASSIST_DOT_DAMAGE_LV1 0.75
#macro ASSIST_DOT_DAMAGE_LV2 0.5
#macro ASSIST_PLAYER_DAMAGE_LV0 1
#macro ASSIST_PLAYER_DAMAGE_LV1 1.5
#macro ASSIST_PLAYER_DAMAGE_LV2 2

}



/*
ゾウフォント
https://www.lazypolarbear.com/zou
Mplus 
https://mplusfonts.github.io
Dela Gothic
https://github.com/syakuzen/DelaGothic

*/