//	@file Version: 1.0
//	@file Name: playerTags.sqf
//	@file Author: Battleguns
//	@file Created: 20/11/2012 05:19
//	@file Args:

disableSerialization;

_uid = getPlayerUID player;
if (_uid in serverdpAdministrators) then {
	if (isnil "pvmkr") then {pvmkr = 0;}; if (pvmkr == 0) then {pvmkr = 1; hint "Player Markers ON";} else {pvmkr = 0; hint "Player Markers OFF";};
	
	//******************************************
	setGroupIconsVisible [true, true];
	while {pvmkr == 1} do
	{
		{
			if (getPlayerUID _x != "" && visibleMap) then
			{
				if (group _x == grpNull) then 
				{
					clearGroupIcons group _x;
					
					switch(str(side _x)) do 
					{
						case "WEST": {group _x addGroupIcon ["b_unknown",[0,0]];};
						case "EAST": {group _x addGroupIcon ["o_unknown",[0,0]];};
						case "GUER": {group _x addGroupIcon ["n_unknown",[0,0]];};
						default {group _x addGroupIcon ["n_unknown",[0,0]];};
					};
					group _x setGroupIconParams [[1, 0.35, 0, 0.8], format ["%1 (%2m)", name _x, round (_x distance player)], 0.5, true];
				}
				else
				{
					clearGroupIcons group _x;
					{
						switch(str(side _x)) do 
						{
							case "WEST": {group _x addGroupIcon ["b_unknown",[0,0]];};
							case "EAST": {group _x addGroupIcon ["o_unknown",[0,0]];};
							case "GUER": {group _x addGroupIcon ["n_unknown",[0,0]];};
							default {group _x addGroupIcon ["n_unknown",[0,0]];};
						};
						group _x setGroupIconParams [[1, 0.35, 0, 0.8], format ["%1 (%2m)", name _x, round (_x distance player)], 0.5, true];						
					} foreach units group _x;clearGroupIcons group _x;
					{
						switch(str(side _x)) do 
						{
							case "WEST": {group _x addGroupIcon ["b_unknown",[0,0]];};
							case "EAST": {group _x addGroupIcon ["o_unknown",[0,0]];};
							case "GUER": {group _x addGroupIcon ["n_unknown",[0,0]];};
							default {group _x addGroupIcon ["n_unknown",[0,0]];};
						};
						group _x setGroupIconParams [[1, 0.35, 0, 0.8], format ["%1 (%2m)", name _x, round (_x distance player)], 0.5, true];						
					} foreach units group _x;
				};
			}
			else
			{
				clearGroupIcons group _x;
			};
			
		} forEach allUnits;
		
		sleep 2;
	};
		
	{
		clearGroupIcons group _x;
	} forEach allUnits; 
	//******************************************
	
} else {
  exit;  
};
