
_car = nearestobjects [player, ["Car", "Helicopter", "Tank"], 4];
if (count _car > 0) then 
{
	_car = _car select 0;
};

_fuelAmount = 0.25;

switch true do {
	case (_car isKindOf "Air"): {_fuelAmount = 0.10;};
	case (_car isKindOf "Tank"): {_fuelAmount = 0.10;};
	case (_car isKindOf "Motorcycle"): {_fuelAmount = 0.75;};
	case (_car isKindOf "ATV_Base_EP1"): {_fuelAmount = 0.75;};
};

if (fuel _car > 0) then 
{
	if (player distance _car < 4) then 
	{
		_fuel = (fuel _car) - _fuelAmount;
		if (_fuel < 0) then {_fuel = 0;};
		_car setFuel _fuel;
		
		player setVariable ["fuelFull",1,false]; 
		player setVariable["fuelEmpty",0,false];
		hint "Your jerry can is now full";
	}
	else
	{
		hint "Vehicle to far away";	
	};
}
else
{
	hint "No fuel in vehicle";
};