//	Name: init.sqf
//	Author: AimZ =(dp)=

if(isServer) exitWith {};

diag_log format["****** clientInit Started ******"];

// Public variable events
"currentDate" addPublicVariableEventHandler {[] call timeSync};
"messageSystem" addPublicVariableEventHandler {[] call serverMessage};
"clientMissionMarkers" addPublicVariableEventHandler {[] call updateMissionsMarkers};
"pvar_teamKillList" addPublicVariableEventHandler {[] call updateTeamKiller};
"pvar_teamkillMessage" addPublicVariableEventHandler {if(local(_this select 1)) then {[] spawn teamkillMessage;};};

"allowPlayerIcons" addPublicVariableEventHandler {hint format["Player Icons %1", allowPlayerIcons];};
"allowGroups" addPublicVariableEventHandler {if(allowGroups == "OFF") then {[player] joinSilent grpNull;}; hint format["Groups %1", allowGroups];};
"clockCycle" addPublicVariableEventHandler {hint format["Day Night Cycle %1", clockCycle];};

// Initialise
[] call clientVars;
[] call briefing;

// One time only setup
[] call initPlayer;	

// Update map markers
[] call createTownMarkers;
[] call createGunStoreMarkers;
[] call createGeneralStoreMarkers;
[] call createConstructionStoreMarkers;
[] call updateMissionsMarkers; 

[] spawn {
	_objects = nearestObjects [getMarkerPos "Town_1", ["House_F"], 8000];
	{
		_x allowDamage false;
	} foreach _objects;
};

// Player setup
//sleep 2;
[] call PlayerSetup;	
[] spawn createMenuActions;	
[] spawn initSurvival; 
[] call createKeyboardEvent; 

// Start HUD drawing
[] spawn rechargeScanner;
[] spawn playerHud;
[] spawn drawPlayerIcons;
[] spawn getPlayerData;
[] spawn getDebugData;

diag_log format["******** clientInit Finished ********"];
