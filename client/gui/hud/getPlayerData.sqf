// draw players tag and name (a coloured icon) for each player with 1000m

if (isnil "pvmkr") then {pvmkr = 0;};

while {true} do
{
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
			if (_x != player) then 
			{		
				// display all of your own side and random chance of others
				_randomDetection = 0;
				if (scanningInProgress) then 
				{
					_randomDetection = random 100;
				};
				
				_isFriendly = ((playerSide != resistance && side _x == playerSide) || (playerSide == resistance && _x in units player));

				if (_isFriendly || (!_isFriendly && _randomDetection > 98)) then
				{
					_playerPos = visiblePosition _x;
					_playerDistance = _playerPos distance player;

					_maxDistance = 1000;
					if (allowPlayerIcons == "OFF") then 
					{
						_maxDistance = 400;
					};
					if (!_isFriendly && _randomDetection > 98) then 
					{
						_maxDistance = 300;
					};
					
					if ((scanningInProgress || allowPlayerIcons == "ON") && _playerDistance <= _maxDistance) then
					{
						iconArray set [count iconArray, _x];
					};
				
					_target = cursorTarget;
					if (_playerDistance <= 400 && _target == _x && player == vehicle player) then
					{	
						nameArray set [count nameArray, _x];				
					};
				};
			};	
		};
	} forEach allUnits;
	
/*
	if (allowPlayerIcons == "OFF") then 
	{
		sleep 15;
	}
	else
	{
		sleep 5;
	};
*/
	sleep 1;
};