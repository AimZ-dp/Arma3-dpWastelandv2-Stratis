
//	@file Version: 1.0
//	@file Name: itemfnc.sqf
//	@file Original Author: TAW_Tonic
//  @file Author: [404] Costlyy, [404] Deadbeat
//	@file Created: 01/01/1970 00:00
//	@file Args: [int (0 = use | 1 = drop)]

#include "dialog\player_sys.sqf";
if(isNil {dropActive}) then {dropActive = false};
disableSerialization;

private["_switch","_data","_vehicle_type","_pos","_otherPlayer"];
_switch = _this select 0;

_mydisplay = findDisplay playersys_DIALOG;

_mycontrol = _mydisplay displayCtrl item_list;
_myselection = lbCurSel item_list;
_data = "";
if (_myselection > -1) then {
	_data = _mycontrol lbData _myselection;
};

_mycontrol = _mydisplay displayCtrl give_to_list;
_myselection = lbCurSel give_to_list;
_otherPlayer = "";
if (_myselection > -1) then {
	_otherPlayer = _mycontrol lbData _myselection;
};

switch(_switch) do 
{
	case 0: // Use item
	{
		if(_data == "") exitWith {
        	player globalChat "YOU NEED TO SELECT AN ITEM TO USE!";
        };
		closeDialog 0;
		switch(_data) do 
		{
			case "fuelFull": 
			{
				[] spawn refuelVehicle;
			};

			case "fuelEmpty": 
			{
				hint "You can refuel Fuel Can at gas station through action menu";
			};

			case "repairkits": 
			{
				[] spawn repairVehicle;
			};

			case "canfood": 
			{
            	// Check if mutex lock is active.
				if(mutexScriptInProgress) exitWith {
					player globalChat localize "STR_WL_Errors_InProgress";
				};
            
            	mutexScriptInProgress = true;
                _currState = animationState player;
                
				if((vehicle player) == player) then {player switchMove "AinvPknlMstpSnonWnonDnon_healed_1";};
                
                for "_i" from 1 to 50 do
                {
                	if (doCancelAction) exitWith {// Player selected "cancel action"
    					mutexScriptInProgress = false;
					}; 
                	sleep 0.1;
                };
                
                if (!(doCancelAction)) then {
                	player setVariable["canfood",(player getVariable "canfood")-1,true];
					_hungerLevel = player getVariable "hunger";
					_hungerLevel = _hungerLevel + 30;
					if(_hungerLevel > 100) then {_hungerLevel = 100};
					player setVariable["hunger",_hungerLevel,true];
                	mutexScriptInProgress = false;
                } else {
                	player switchMove _currState;
                	doCancelAction = false;
                };
			};
			case "water": 
			{
            	// Check if mutex lock is active.
				if(mutexScriptInProgress) exitWith {
					player globalChat localize "STR_WL_Errors_InProgress";
				};
            	
                mutexScriptInProgress = true;
                _currState = animationState player;
                
				if((vehicle player) == player) then {player switchMove "AinvPknlMstpSnonWnonDnon_healed_1";};
                
                for "_i" from 1 to 50 do
                {
                	if (doCancelAction) exitWith {// Player selected "cancel action"
    					mutexScriptInProgress = false;
					}; 
                	sleep 0.1;
                };
                
                if (!(doCancelAction)) then {
                	player setVariable["water",(player getVariable "water")-1,true];
					_thirstLevel = player getVariable "thirst";
					_thirstLevel = _thirstLevel + 50;
					if(_thirstLevel > 100) then {_thirstLevel = 100};
					player setVariable["thirst",_thirstLevel,true];
                	mutexScriptInProgress = false;
                } else {
                	player switchMove _currState;
                	doCancelAction = false;
                };     
			};
			case "medkit": 
			{
				if((damage player) < 0.25) exitwith {

					if((damage player) < 0.01) then {
						hint "You do not require a medkit";
					} else {
						hint "You have healed minor injures";
					};
					player setDamage 0;
				};

				if((vehicle player) == player) then { player playmove "AinvPknlMstpSlayWrflDnon_medic"; };

				player setVariable["medkits",(player getVariable "medkits")-1,true];
				sleep 6.5;
				player setDamage 0;
				hint "You are now fully healed";
			};
			case "camonet": 
			{
				_playerPos = getPosATL player;
				player setVariable["camonet",(player getVariable "camonet")-1,true];
				_dir = getdir player;
				_deployedCamoNet = "Land_cargo_addon02_V2_F" createVehicle (position player); 
				_deployedCamoNet setVariable["newVehicle",vChecksum,true];
				_deployedCamoNet setPos _playerPos;
				_deployedCamoNet setDir _dir;
				hint "Slum canvas deployed";
			};            
            case "spawnBeacon": 
            {
            	[] call placeSpawnBeacon;
            };
		};
		
		mutexScriptInProgress = false;
        player SwitchMove "aidlpercmstpsraswrfldnon_idlesteady01n"; 
	};

	case 1: //Give item
	{

		if(_data == "") exitWith {
        	player globalChat "YOU NEED TO SELECT AN ITEM TO GIVE!";
        };
		if(_otherPlayer == "") exitWith {
        	player globalChat "YOU NEED TO SELECT A PLAYER TO GIVE TO!";
        };
		// Check if mutex lock is active.
		if(mutexScriptInProgress) exitWith {
			player globalChat "YOU ARE ALREADY PERFORMING ANOTHER ACTION!";
		};
        
		if(vehicle player != player) exitwith {
        	player globalChat "YOU ARE CURRENTLY BUSY!";
        };

        closeDialog 0; // To fix the listbox not updating properly.        
        mutexScriptInProgress = true;
		
		_nearestPlayers = nearestobjects [player, ["B_Soldier_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","O_Soldier_F","O_soldier_M_F","O_medic_F","O_soldier_repair_F","I_Soldier_F","I_soldier_M_F","I_medic_F","I_soldier_repair_F"],  5];
		{
			if (player distance _x < 5 && alive _x && name _x == _otherPlayer) then
			{
				player switchMove "AmovPercMstpSrasWpstDnon_gear";
				//_x switchMove "AmovPercMstpSrasWrflDnon_gear_AmovPercMstpSrasWrflDnon";
				
				//Give the item
				switch(_data) do 
				{
					case "canfood": {player setVariable["canfood",(player getVariable "canfood")-1,true];_x setVariable["canfood",(_x getVariable "canfood")+1,true];};
					case "fuelFull": {player setVariable["fuelFull",(player getVariable "fuelFull")-1,true];_x setVariable["fuelFull",(_x getVariable "fuelFull")+1,true];};
					case "fuelEmpty": {player setVariable["fuelEmpty",(player getVariable "fuelEmpty")-1,true];_x setVariable["fuelEmpty",(_x getVariable "fuelEmpty")+1,true];};
					case "repairkits": {player setVariable["repairkits",(player getVariable "repairkits")-1,true];_x setVariable["repairkits",(_x getVariable "repairkits")+1,true];};
					case "water": {player setVariable["water",(player getVariable "water")-1,true];_x setVariable["water",(_x getVariable "water")+1,true];};
					case "medkit": {player setVariable["medkits",(player getVariable "medkits")-1,true];_x setVariable["medkits",(_x getVariable "medkits")+1,true];};
					case "spawnBeacon": {player setVariable["spawnBeacon",(player getVariable "spawnBeacon")-1,true];_x setVariable["spawnBeacon",(_x getVariable "spawnBeacon")+1,true];};
				};

				sleep 5;
			};
		} foreach _nearestPlayers;

        mutexScriptInProgress = false;
        player SwitchMove "aidlpercmstpsraswrfldnon_idlesteady01n"; 
	};
};