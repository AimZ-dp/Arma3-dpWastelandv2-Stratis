// draw players tag and name (a coloured icon) for each player with 1000m

if (isnil "pvmkr") then {pvmkr = 0;};

while {true} do
{
	//waituntil {
		iconArray = [];
		nameArray = [];
		{  
			_uid = getPlayerUID player;		
			if (pvmkr == 1 && _uid in serverdpAdministrators) then 
			{
				if (_x != player) then
				{
					_playerPos = visiblePosition _x;
					_playerDistance = _playerPos distance player;
					if (_playerDistance <= 1500) then
					{
						iconArray set [count iconArray, _x];
					};
				
					_target = cursorTarget;
					if (_playerDistance <= 1500 && _target == _x && player == vehicle player) then
					{	
						nameArray set [count nameArray, _x];				
					};
				};
			}
			else 
			{
				if ((_x != player) && ((playerSide != resistance && side _x == playerSide) || (playerSide == resistance && _x in units player))) then
				{
					_playerPos = visiblePosition _x;
					_playerDistance = _playerPos distance player;
					if (_playerDistance <= 800) then
					{
						iconArray set [count iconArray, _x];
					};
				
					_target = cursorTarget;
					if (_playerDistance <= 200 && _target == _x && player == vehicle player) then
					{	
						nameArray set [count nameArray, _x];				
					};
				};	
			};
		} forEach allUnits;
		
		sleep 1;
		//false
	//};
};