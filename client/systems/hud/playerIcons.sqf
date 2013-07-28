// HUD graphics - should only have 1 script.. for player info, player names, player icons etc
iconArray = [];
nameArray = [];
debugArray = [];

if (isnil "pvmkr") then {pvmkr = 0;};

addMissionEventHandler ["Draw3D", {
	private ["_playerIcon","_playerPos","_playerName","_playerDistance","_iconColour","_iconSize","_target","_uid","_map","_timeOut","_objectDistance","_objectPos","_timeLeft"];

	_uid = getPlayerUID player;		
	
	// draw players tag and name (a coloured icon) for each player with 1000m
	{  
		_playerPos = visiblePosition _x;
		_playerPos set [2, (_playerPos select 2) + 2.5];
		_playerDistance = _playerPos distance player;
		
		switch(str(side _x)) do 
		{
			case "WEST": {_playerIcon = "\A3\ui_f\data\map\Markers\NATO\b_unknown.paa";_iconColour = [0,0,1,1];};
			case "EAST": {_playerIcon = "\A3\ui_f\data\map\Markers\NATO\o_unknown.paa";_iconColour = [1,0,0,1];};
			case "GUER": {_playerIcon = "\A3\ui_f\data\map\Markers\NATO\n_unknown.paa";_iconColour = [0,1,0,1];};
			default {_playerIcon = "\A3\ui_f\data\map\Markers\Military\unknown_ca.paa";_iconColour = [1,1,1,1];};
		};
		
		_iconSize = (-0.0004 * _playerDistance) + 0.6;
		if (_iconSize >= 0.6) then {_iconSize = 0.6};
		if (_iconSize <= 0.2) then {_iconSize = 0.2};
		
		// draw the icon	
		if (!visibleMap) then 
		{
			drawIcon3D [_playerIcon, _iconColour, _playerPos, _iconSize, _iconSize, 0, "", 0, 0.03, "PuristaLight"];
		};
	} forEach iconArray;
	
	{
		if (!visibleMap) then 
		{
			if (pvmkr == 1 && _uid in serverdpAdministrators) then 
			{
				drawIcon3D ["", [1,1,1,1], visiblePosition _x, 0, 0, 0, format ["%1 (%2m)", name _x, round (_x distance player)], 0, 0.03, "PuristaLight"];			
			}
			else
			{
				drawIcon3D ["", [1,1,1,1], visiblePosition _x, 0, 0, 0, name _x, 0, 0.03, "PuristaLight"];			
			};
		};
	} forEach nameArray;
		
	if (pvmkr == 1 && _uid in serverdpAdministrators) then 
	{	
		{
			_objectPos = visiblePosition _x;
			_objectPos set [2, (_objectPos select 2) - 0.5];
			_timeOut = _x getVariable ["timeout", time];
			_timeLeft = _timeOut - time;
			
			drawIcon3D ["", [1,1,1,1], _objectPos, 0, 0, 0, format["respawn in %1s", floor(_timeLeft)], 0, 0.03, "PuristaLight"];		

		} foreach debugArray;
	};
}];
