//
function text(){
global.ds_text = ds_grid_create(100, 5);
/*global.ds_text[# TEXT.MENU_RESUME, Launguage.English] =				"RESUME";
global.ds_text[# TEXT.MENU_RETRY, Launguage.English] =				"RETRY";
global.ds_text[# TEXT.MENU_OPTION, Launguage.English] =				"OPTION";
global.ds_text[# TEXT.MENU_ASSISTMODE, Launguage.English] =			"ASSIST MODE";
global.ds_text[# TEXT.MENU_SAVEANDQUIT, Launguage.English] =		"SAVE AND QUIT";
global.ds_text[# TEXT.MENU_SE, Launguage.English] =					"SE";
global.ds_text[# TEXT.MENU_BGM, Launguage.English] =				"BGM";
global.ds_text[# TEXT.MENU_LAUNGUAGE, Launguage.English] =			"LAUNGUAGE";
global.ds_text[# TEXT.MENU_ENEMYDAMAGE, Launguage.English] =		"ENEMY DAMAGE";
global.ds_text[# TEXT.MENU_DOTDAMAGE, Launguage.English] =			"DOT DAMAGE";
global.ds_text[# TEXT.MENU_PLAYERDAMAGE, Launguage.English] =		"PLAYER DAMAGE";
global.ds_text[# TEXT.MENU_TOGGLEASSISTMODE, Launguage.English] =	"ASSIST MODE";
global.ds_text[# TEXT.MENU_HELLMODE, Launguage.English] =			"HELL MODE";

global.ds_text[# TEXT.MENU_RESUME, Launguage.Japanese] =			"戻る";
global.ds_text[# TEXT.MENU_RETRY, Launguage.Japanese] =				"リトライ";
global.ds_text[# TEXT.MENU_OPTION, Launguage.Japanese] =			"オプション";
global.ds_text[# TEXT.MENU_ASSISTMODE, Launguage.Japanese] =		"アシストモード";
global.ds_text[# TEXT.MENU_SAVEANDQUIT, Launguage.Japanese] =		"セーブして終了";
global.ds_text[# TEXT.MENU_SE, Launguage.Japanese] =				"SE";
global.ds_text[# TEXT.MENU_BGM, Launguage.Japanese] =				"BGM";
global.ds_text[# TEXT.MENU_LAUNGUAGE, Launguage.Japanese] =			"言語";
global.ds_text[# TEXT.MENU_ENEMYDAMAGE, Launguage.Japanese] =		"敵の攻撃力";
global.ds_text[# TEXT.MENU_DOTDAMAGE, Launguage.Japanese] =			"スリップダメージ";
global.ds_text[# TEXT.MENU_PLAYERDAMAGE, Launguage.Japanese] =		"プレイヤーダメージ";
global.ds_text[# TEXT.MENU_TOGGLEASSISTMODE, Launguage.Japanese] =	"アシストモード";
global.ds_text[# TEXT.MENU_HELLMODE, Launguage.Japanese] =			"HELL MODE";*/


global.ds_text[# TEXT.TUTORIAL_MOVE, Launguage.English] =			"move";
global.ds_text[# TEXT.TUTORIAL_HOOK, Launguage.English] =			"tongue";
global.ds_text[# TEXT.TUTORIAL_SHOT, Launguage.English] =			"shot";
global.ds_text[# TEXT.TUTORIAL_KILL, Launguage.English] =			"kill";
global.ds_text[# TEXT.TUTORIAL_HELL, Launguage.English] =			"hell";
global.ds_text[# TEXT.TUTORIAL_BROKENGUN, Launguage.English] =		"Broken Gun";
global.ds_text[# TEXT.TUTORIAL_HELLGUN, Launguage.English] =		"Hell Gun";
global.ds_text[# TEXT.TUTORIAL_MOZA, Launguage.English] =			"Mozandique";

global.ds_text[# TEXT.TUTORIAL_MOVE, Launguage.Japanese] =			"移動";
global.ds_text[# TEXT.TUTORIAL_HOOK, Launguage.Japanese] =			"舌";
global.ds_text[# TEXT.TUTORIAL_SHOT, Launguage.Japanese] =			"射撃";
global.ds_text[# TEXT.TUTORIAL_KILL, Launguage.Japanese] =			"殺害";
global.ds_text[# TEXT.TUTORIAL_HELL, Launguage.Japanese] =			"ヘル";
global.ds_text[# TEXT.TUTORIAL_BROKENGUN, Launguage.Japanese] =		"壊れた銃";
global.ds_text[# TEXT.TUTORIAL_HELLGUN, Launguage.Japanese] =		"地獄の銃";
global.ds_text[# TEXT.TUTORIAL_MOZA, Launguage.Japanese] =			"モザムディーク";

global.ds_text[# TEXT.STAGE1_TEXT1, Launguage.Japanese] =			"あなたは地獄に落ちた。";
global.ds_text[# TEXT.STAGE1_TEXT2, Launguage.Japanese] =			"地獄では瘴気があなたの体力を奪う。";
global.ds_text[# TEXT.STAGE1_TEXT3, Launguage.Japanese] =			"体力を回復するには魔物の魂が必要だ。";
global.ds_text[# TEXT.STAGE1_TEXT4, Launguage.Japanese] =			"魔物を殺して魂を奪え";
global.ds_text[# TEXT.STAGE1_TEXT5, Launguage.Japanese] =			"";




//en
#macro EN_MENU_RESUME "RESUME"
#macro EN_MENU_RETRY "RETRY"
#macro EN_MENU_OPTION "OPTION"
#macro EN_MENU_ASSISTMODE "ASSIST MODE"
#macro EN_MENU_SAVEANDQUIT "SAVE AND QUIT"
#macro EN_MENU_SE "SE"
#macro EN_MENU_BGM "BGM"
#macro EN_MENU_LAUNGUAGE "LAUNGUAGE"
#macro EN_MENU_ENEMYDAMAGE "ENEMY ATTACK DAMAGE"
#macro EN_MENU_DOTDAMAGE "DOT DAMAGE"
#macro EN_MENU_PLAYERDAMAGE "PLAYER ATTACK DAMAGE"
#macro EN_MENU_TOGGLEASSISTMODE "ASSIST MODE"
#macro EN_MENU_HELLMODE "HELL MODE"

//jp
#macro JP_MENU_RESUME "戻る"
#macro JP_MENU_RETRY "リトライ"
#macro JP_MENU_OPTION "オプション"
#macro JP_MENU_ASSISTMODE "アシストモード"
#macro JP_MENU_SAVEANDQUIT "セーブして終了"
#macro JP_MENU_SE "SE"
#macro JP_MENU_BGM "BGM"
#macro JP_MENU_LAUNGUAGE "言語"
#macro JP_MENU_ENEMYDAMAGE "敵の攻撃力"
#macro JP_MENU_DOTDAMAGE "スリップダメージ"
#macro JP_MENU_PLAYERDAMAGE "プレイヤーの攻撃力"
#macro JP_MENU_TOGGLEASSISTMODE "アシストモード"
#macro JP_MENU_HELLMODE "HELL MODE"


enum TEXT{
	MENU_RESUME,
	MENU_RETRY,
	MENU_OPTION,
	MENU_ASSISTMODE,
	MENU_SAVEANDQUIT,
	MENU_SE,
	MENU_BGM,
	MENU_LAUNGUAGE,
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
	STAGE1_TEXT1,
	STAGE1_TEXT2,
	STAGE1_TEXT3,
	STAGE1_TEXT4,
	STAGE1_TEXT5,
}



}