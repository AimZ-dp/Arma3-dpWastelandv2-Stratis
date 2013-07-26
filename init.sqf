//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:13
//	@file Description: The main init.
//	@file Args:

// reset BIS_fnc_mp
//"BIS_fnc_MP_packet" addPublicVariableEventHandler {};

enableSaving[false,false]; 

DEBUG_MESSAGES = false;
versionName = "v1.4";
modVersion = "build-1009";
vChecksum = 1;
{vChecksum = vChecksum + _x;} forEach (toArray modVersion); 

X_Server = false;
X_Client = false;
if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};

diag_log format ["####### init.sqf - briefing ######"];

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "briefing.sqf";

objectTimeOut = 15; 
objectCheckDelay = 10;

if(X_Server) then 
{
	diag_log format ["####### init.sqf - server setup ######"];
	diag_log format ["####### %1 #######", missionName];
	diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
    diag_log format["WASTELAND SERVER - Initilizing Server"];
	[] execVM "server\init.sqf";
	diag_log format ["####### init.sqf - server anticheat ######"];
	[] execVM "server\functions\PartialAntiCheats.sqf";
};

if(X_Client) then {
	diag_log format ["####### init.sqf - client setup ######"];

	true spawn {
		titleText ["Welcome to =(dp)= Wasteland, please wait for your player to setup", "BLACK", 0];
		waitUntil {player == player};
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};

	waitUntil {player == player};
	
	"THISIS437SPARTA" addPublicVariableEventHandler { [] spawn (_this select 1); };
    dat4ClientStarted = player;
    publicVariableServer "dat4ClientStarted";
	
	//Wipe Group.
	if(count units group player > 1) then
	{  
		diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

//init 3rd Party Scripts
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";



