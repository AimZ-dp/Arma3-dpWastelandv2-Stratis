
//	@file Version: 1.0
//	@file Name: playerSetup.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this;
//Player initialization
_player setskill 0;
{_player disableAI _x} foreach ["move","anim","target","autotarget"];
_player setVariable ["BIS_noCoreConversations", true];

enableSentences false;
_player removeWeapon "ItemRadio";
_player removeWeapon "ItemGPS";
removeAllWeapons _player;
removeBackpack _player;

//Default case means something fucked up.
_player unassignItem "NVGoggles"; 
_player removeItem "NVGoggles";
removeUniform _player;
removeVest _player;
removeHeadgear _player;
removeGoggles _player;


if(str(playerSide) in ["WEST"]) then
{
	_player addUniform "U_B_CombatUniform_mcam_tshirt";
	_player addVest "V_Rangemaster_belt";
	_player addHeadgear "H_Cap_brn_SERO";
	_player addBackpack "B_AssaultPack_blk";
};

if(str(playerSide) in ["EAST"]) then
{
	_player addUniform "U_B_CombatUniform_mcam_tshirt";
	_player addVest "V_Rangemaster_belt";
	_player addHeadgear "H_Cap_brn_SERO";
	_player addBackpack "B_AssaultPack_blk";
};

if(str(playerSide) in ["GUER"]) then
{
	_player addUniform "U_B_CombatUniform_mcam_tshirt";
	_player addVest "V_Rangemaster_belt";
	_player addHeadgear "H_Cap_brn_SERO";
	_player addBackpack "B_AssaultPack_blk";

};

_player addMagazine "16Rnd_9x21_Mag";
_player addMagazine "16Rnd_9x21_Mag";
_player addMagazine "16Rnd_9x21_Mag";
_player addWeapon "hgun_P07_F";
_player selectWeapon "hgun_P07_F";

_uid = getPlayerUID _player;
if (_uid in serverdpAdministrators) then {
	removeHeadgear _player;
	_player addHeadgear "H_Booniehat_ocamo";
};

_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";

thirstLevel = 100;
hungerLevel = 100;

_player setVariable["cmoney",250,true];
_player setVariable["canfood",1,false];
_player setVariable["medkits",1,false];
_player setVariable["water",1,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",1,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];

[] execVM "client\functions\playerActions.sqf";

_player groupChat format["=(dp)= Wasteland - Initialization Complete"];
playerSetupComplete = true;
