// HUD graphics - should only have 1 script.. for player info, player names, player icons etc
onEachFrame {

	private ["_playerIcon","_playerPos","_playerName","_playerDistance","_iconColour","_iconSize","_target","_uid","_map","_timeOut","_objectDistance","_objectPos"];
	
	// draw players tag and name (a coloured icon) for each player with 1000m
	{  
		_playerName = name _x;
		
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
		if (isnil "pvmkr") then {pvmkr = 0;};
		_uid = getPlayerUID player;		
		if (pvmkr == 1 && _uid in serverdpAdministrators) then 
		{
			if (_x != player) then
			{
				if (!visibleMap) then
				{
					if (_playerDistance <= 3000) then
					{
						drawIcon3D [_playerIcon, _iconColour, _playerPos, _iconSize, _iconSize, 0, "", 0, 0.03, "PuristaLight"];
					};
					
					_target = cursorTarget;
					if (_playerDistance <= 3000 && _target == _x && player == vehicle player) then
					{	
						drawIcon3D ["", [1,1,1,1], visiblePosition _x, 0, 0, 0, format ["%1 (%2m)", name _x, round (_x distance player)], 0, 0.03, "PuristaLight"];			
					};
				}
				else
				{
					//uiNamespace setVariable ["_map",(findDisplay 12) displayCtrl 51];
					//(uiNamespace getVariable "_map") drawIcon [_playerIcon, _iconColour, _playerPos, 0.8, 0.8, 0, _playerName, 0, 0.03, "PuristaLight"];				
				};
			};		
		}
		else 
		{
			if ((_x != player) && ((playerSide != resistance && side _x == playerSide) || (playerSide == resistance && _x in units player))) then
			{
				if (!visibleMap) then 
				{
					if (_playerDistance <= 1000) then
					{
						drawIcon3D [_playerIcon, _iconColour, _playerPos, _iconSize, _iconSize, 0, "", 0, 0.03, "PuristaLight"];
					};
					
					_target = cursorTarget;
					if (_playerDistance <= 300 && _target == _x && player == vehicle player) then
					{	
						drawIcon3D ["", [1,1,1,1], visiblePosition _x, 0, 0, 0, _playerName, 0, 0.03, "PuristaLight"];			
					};
				}
				else
				{
					//uiNamespace setVariable ["_map",(findDisplay 12) displayCtrl 51];
					//(uiNamespace getVariable "_map") drawIcon [_playerIcon, _iconColour, _playerPos, 0.8, 0.8, 0, _playerName, 0, 0.03, "PuristaLight"];
				};
			};
		};
	} forEach allUnits;
	
	{
		_timeOut = _x getVariable ["timeout", 0];
		_objectPos = getPos _x;
		_objectPos set [2, (_objectPos select 2) - 0.5];
		_objectDistance = _objectPos distance player;
		
		if (_timeOut > 0 && _timeOut < 61 && _objectDistance <= 100) then
		{
			drawIcon3D ["", [1,1,1,1], _objectPos, 0, 0, 0, format["respawn: %1s", floor(_timeOut)], 0, 0.03, "PuristaLight"];		
		};
	} foreach vehicles;
	
	
};

/*
addMissionEventHandler ["Draw3D", {
    drawIcon3D [
        "\A3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa",
        [0,0,1,1],
        [
            (visiblePosition Bob) select 0,
            (visiblePosition Bob) select 1, 
            3
        ],
        1,
        1,
        45,
        name Bob,
        1,
        0.03, 
        "PuristaLight"
    ];
}];
*/