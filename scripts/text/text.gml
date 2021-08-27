//
function text(){
global.ds_text = ds_grid_create(100, 5);
/*global.ds_text[# TEXT.MENU_RESUME, language.English] =				"RESUME";
global.ds_text[# TEXT.MENU_RETRY, language.English] =				"RETRY";
global.ds_text[# TEXT.MENU_OPTION, language.English] =				"OPTION";
global.ds_text[# TEXT.MENU_ASSISTMODE, language.English] =			"ASSIST MODE";
global.ds_text[# TEXT.MENU_SAVEANDQUIT, language.English] =		"SAVE AND QUIT";
global.ds_text[# TEXT.MENU_SE, language.English] =					"SE";
global.ds_text[# TEXT.MENU_BGM, language.English] =				"BGM";
global.ds_text[# TEXT.MENU_language, language.English] =			"language";
global.ds_text[# TEXT.MENU_ENEMYDAMAGE, language.English] =		"ENEMY DAMAGE";
global.ds_text[# TEXT.MENU_DOTDAMAGE, language.English] =			"DOT DAMAGE";
global.ds_text[# TEXT.MENU_PLAYERDAMAGE, language.English] =		"PLAYER DAMAGE";
global.ds_text[# TEXT.MENU_TOGGLEASSISTMODE, language.English] =	"ASSIST MODE";
global.ds_text[# TEXT.MENU_HELLMODE, language.English] =			"HELL MODE";

global.ds_text[# TEXT.MENU_RESUME, language.Japanese] =			"戻る";
global.ds_text[# TEXT.MENU_RETRY, language.Japanese] =				"リトライ";
global.ds_text[# TEXT.MENU_OPTION, language.Japanese] =			"オプション";
global.ds_text[# TEXT.MENU_ASSISTMODE, language.Japanese] =		"アシストモード";
global.ds_text[# TEXT.MENU_SAVEANDQUIT, language.Japanese] =		"セーブして終了";
global.ds_text[# TEXT.MENU_SE, language.Japanese] =				"SE";
global.ds_text[# TEXT.MENU_BGM, language.Japanese] =				"BGM";
global.ds_text[# TEXT.MENU_language, language.Japanese] =			"言語";
global.ds_text[# TEXT.MENU_ENEMYDAMAGE, language.Japanese] =		"敵の攻撃力";
global.ds_text[# TEXT.MENU_DOTDAMAGE, language.Japanese] =			"スリップダメージ";
global.ds_text[# TEXT.MENU_PLAYERDAMAGE, language.Japanese] =		"プレイヤーダメージ";
global.ds_text[# TEXT.MENU_TOGGLEASSISTMODE, language.Japanese] =	"アシストモード";
global.ds_text[# TEXT.MENU_HELLMODE, language.Japanese] =			"HELL MODE";*/


global.ds_text[# TEXT.TUTORIAL_MOVE, language.English] =			"move";
global.ds_text[# TEXT.TUTORIAL_HOOK, language.English] =			"tongue";
global.ds_text[# TEXT.TUTORIAL_SHOT, language.English] =			"shot";
global.ds_text[# TEXT.TUTORIAL_KILL, language.English] =			"kill";
global.ds_text[# TEXT.TUTORIAL_HELL, language.English] =			"HELL";
global.ds_text[# TEXT.TUTORIAL_BROKENGUN, language.English] =		"Broken Gun";
global.ds_text[# TEXT.TUTORIAL_HELLGUN, language.English] =		"Hell Gun";
global.ds_text[# TEXT.TUTORIAL_MOZA, language.English] =			"Mozandique";
global.ds_text[# TEXT.TUTORIAL_HIDDENGOAL, language.English] =		"Shortcut XD";

global.ds_text[# TEXT.TUTORIAL_MOVE, language.Japanese] =			"移動";
global.ds_text[# TEXT.TUTORIAL_HOOK, language.Japanese] =			"舌";
global.ds_text[# TEXT.TUTORIAL_SHOT, language.Japanese] =			"射撃";
global.ds_text[# TEXT.TUTORIAL_KILL, language.Japanese] =			"殺害";
global.ds_text[# TEXT.TUTORIAL_HELL, language.Japanese] =			"ヘル";
global.ds_text[# TEXT.TUTORIAL_BROKENGUN, language.Japanese] =		"壊れた銃";
global.ds_text[# TEXT.TUTORIAL_HELLGUN, language.Japanese] =		"地獄の銃";
global.ds_text[# TEXT.TUTORIAL_MOZA, language.Japanese] =			"モザムディーク";
global.ds_text[# TEXT.TUTORIAL_HIDDENGOAL, language.Japanese] =	"地獄への近道 (便利)";


global.ds_text[# TEXT.STAGE1_TEXT1, language.English] =			"You've gone to hell.";
global.ds_text[# TEXT.STAGE1_TEXT2, language.English] =			"In hell, the miasma will rob you of your health.";
global.ds_text[# TEXT.STAGE1_TEXT3, language.English] =			"You'll need the enemy's soul to restore your health.";
global.ds_text[# TEXT.STAGE1_TEXT4, language.English] =			"KILL THEM ALL";

global.ds_text[# TEXT.STAGE1_TEXT1, language.Japanese] =			"あなたは地獄に落ちた。";
global.ds_text[# TEXT.STAGE1_TEXT2, language.Japanese] =			"地獄では瘴気があなたの体力を奪う。";
global.ds_text[# TEXT.STAGE1_TEXT3, language.Japanese] =			"体力を回復するには魔物の魂が必要だ。";
global.ds_text[# TEXT.STAGE1_TEXT4, language.Japanese] =			"皆殺しにしろ";

global.ds_text[# TEXT.EFFECT_SLOW, language.English] =				"SLOW";
global.ds_text[# TEXT.EFFECT_CURSE, language.English] =			"INCOMING DAMAGE";
global.ds_text[# TEXT.EFFECT_SUPP, language.English] =				"SUPPRASSION";

global.ds_text[# TEXT.EFFECT_SLOW, language.Japanese] =			"スロウ";
global.ds_text[# TEXT.EFFECT_CURSE, language.Japanese] =			"被ダメージ";
global.ds_text[# TEXT.EFFECT_SUPP, language.Japanese] =			"サプレッション";

global.ds_text[# TEXT.CLEARTEXT_THANKYOU, language.English] =		"THANKYOU@FOR@PLAYING";
global.ds_text[# TEXT.CLEARTEXT_DEVELOPER1, language.English] =	"DEVELOPER";
global.ds_text[# TEXT.CLEARTEXT_DEVELOPER2, language.English] =	"LIC";
global.ds_text[# TEXT.CLEARTEXT_TOOL1, language.English] =			"MADE WITH";
global.ds_text[# TEXT.CLEARTEXT_TOOL2, language.English] =			"GAMEMAKER@STUDIO@2";
global.ds_text[# TEXT.CLEARTEXT_HELLFROG, language.English] =		"HELLFROG";
global.ds_text[# TEXT.CLEARTEXT_TIMER, language.English] =			"TIME";

global.ds_text[# TEXT.TITLETEXT_GAMESTART, language.English] =		"START GAME";
global.ds_text[# TEXT.TITLETEXT_LOADGAME, language.English] =		"LOAD GAME";
global.ds_text[# TEXT.TITLETEXT_OPTION, language.English] =		"OPTION";
global.ds_text[# TEXT.TITLETEXT_ASSISTMODE, language.English] =	"ASSISTMODE";
global.ds_text[# TEXT.TITLETEXT_EXITGAME, language.English] =		"EXIT GAME";

global.ds_text[# TEXT.TITLETEXT_GAMESTART, language.Japanese] =	"ゲーム開始";
global.ds_text[# TEXT.TITLETEXT_LOADGAME, language.Japanese] =		"ロード";
global.ds_text[# TEXT.TITLETEXT_OPTION, language.Japanese] =		"オプション";
global.ds_text[# TEXT.TITLETEXT_ASSISTMODE, language.Japanese] =	"アシストモード";
global.ds_text[# TEXT.TITLETEXT_EXITGAME, language.Japanese] =		"ゲーム終了";


//en
#macro EN_MENU_RESUME "RESUME"
#macro EN_MENU_RETRY "RETRY"
#macro EN_MENU_OPTION "OPTION"
#macro EN_MENU_ASSISTMODE "ASSIST MODE"
#macro EN_MENU_SAVEANDQUIT "SAVE AND QUIT"
#macro EN_MENU_SE "SE"
#macro EN_MENU_BGM "BGM"
#macro EN_MENU_language "language"
#macro EN_MENU_TIMER "TIMER"
#macro EN_MENU_ENEMYDAMAGE "ENEMY ATTACK DAMAGE"
#macro EN_MENU_DOTDAMAGE "DOT DAMAGE"
#macro EN_MENU_PLAYERDAMAGE "PLAYER ATTACK DAMAGE"
#macro EN_MENU_TOGGLEASSISTMODE "ASSIST MODE"
#macro EN_MENU_HELLMODE "HELL MODE"
#macro EN_MENU_ASSISTLEVEL_MAX "Achievements not obtainable."

//jp
#macro JP_MENU_RESUME "戻る"
#macro JP_MENU_RETRY "リトライ"
#macro JP_MENU_OPTION "オプション"
#macro JP_MENU_ASSISTMODE "アシストモード"
#macro JP_MENU_SAVEANDQUIT "セーブして終了"
#macro JP_MENU_SE "SE"
#macro JP_MENU_BGM "BGM"
#macro JP_MENU_language "言語"
#macro JP_MENU_TIMER "タイマー"
#macro JP_MENU_ENEMYDAMAGE "敵の攻撃力"
#macro JP_MENU_DOTDAMAGE "スリップダメージ"
#macro JP_MENU_PLAYERDAMAGE "プレイヤーの攻撃力"
#macro JP_MENU_TOGGLEASSISTMODE "アシストモード"
#macro JP_MENU_HELLMODE "HELL MODE"
#macro JP_MENU_ASSISTLEVEL_MAX "実績を取得できません。"

enum TEXT{
	MENU_RESUME,
	MENU_RETRY,
	MENU_OPTION,
	MENU_ASSISTMODE,
	MENU_SAVEANDQUIT,
	MENU_SE,
	MENU_BGM,
	MENU_language,
	MENU_ENEMYDAMAGE,
	MENU_DOTDAMAGE,
	MENU_PLAYERDAMAGE,
	MENU_TOGGLEASSISTMODE,
	MENU_HELLMODE,
	
	TUTORIAL_MOVE,
	TUTORIAL_HOOK,
	TUTORIAL_SHOT,
	TUTORIAL_KILL,
	TUTORIAL_HELL,
	TUTORIAL_BROKENGUN,
	TUTORIAL_HELLGUN,
	TUTORIAL_MOZA,
	TUTORIAL_HIDDENGOAL,
	
	EFFECT_SLOW,
	EFFECT_CURSE,
	EFFECT_SUPP,
	
	STAGE1_TEXT1,
	STAGE1_TEXT2,
	STAGE1_TEXT3,
	STAGE1_TEXT4,
	
	CLEARTEXT_THANKYOU,
	CLEARTEXT_DEVELOPER1,
	CLEARTEXT_DEVELOPER2,
	CLEARTEXT_TOOL1,
	CLEARTEXT_TOOL2,
	CLEARTEXT_HELLFROG,
	CLEARTEXT_TIMER,
	
	TITLETEXT_GAMESTART,
	TITLETEXT_LOADGAME,
	TITLETEXT_OPTION,
	TITLETEXT_ASSISTMODE,
	TITLETEXT_EXITGAME,
	TITLETEXT_LOGO,
	
}



}