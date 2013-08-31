
// collect all debug info to draw...
while {true} do
{
	debugArray = [];
	{
		if (!(isNull _x) && alive player) then
		{
			_timeout = _x getVariable ["timeout", -1];
			_status = _x getVariable ["status", "unknown"];
			_objectPos = visiblePosition _x;
			_objectDistance = _objectPos distance player;
			//_target = cursorTarget;
			//if (_target == _x && _timeout > -1 && _objectDistance <= 400 && _status == "alive") then
			if (_timeout > -1 && _objectDistance <= 400) then
			{
				debugArray set [count debugArray, _x];
			};
		};
	} foreach vehicles;	
	/*
	{
		if (!(isNull _x)) then 
		{
			_timeout = _x getVariable ["timeout", -1];
			_objectPos = visiblePosition _x;
			_objectDistance = _objectPos distance player;
							
			if (_timeout > -1 && _objectDistance <= 400) then
			{
				debugArray set [count debugArray, _x];
			};
		};
	} forEach allDeadMen;
	*/
	sleep 1;
};

