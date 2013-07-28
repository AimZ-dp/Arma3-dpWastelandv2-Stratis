//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:13
//	@file Description: The main init.
//	@file Args:

diag_log format["******** init.sqf Started ********"];
// reset BIS_fnc_mp
//"BIS_fnc_MP_packet" addPublicVariableEventHandler {};

versionName = "v1.6";
vChecksum = 1;
modVersion = "build-1012";
{vChecksum = vChecksum + _x;} forEach (toArray modVersion); 

X_Server = false;
X_Client = false;
if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};

if(X_Server) then 
{
    diag_log format["*** Server Setup ***"];
	[] execVM "server\init.sqf";
	
	//diag_log format ["*** Server Antihacks ***"];
	//[] execVM "server\functions\PartialAntiCheats.sqf";
};

if(X_Client) then {
    diag_log format["*** Client Setup ***"];
	enableSaving[false,false]; 

	true spawn {
		titleText ["Welcome to =(dp)= Wasteland, please wait for your player to setup", "BLACK", 0];
		waitUntil {player == player};
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};

	waitUntil {player == player};
	
	//"THISIS437SPARTA" addPublicVariableEventHandler { [] spawn (_this select 1); };
    //dat4ClientStarted = player;
    //publicVariableServer "dat4ClientStarted";
		
	//Wipe Group.
	if(count units group player > 1) then
	{  
		diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

//init 3rd Party Scripts
//[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";



