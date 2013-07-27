
//	@file Version: 1.0
//	@file Name: refuelFuelCan.sqf
//	@file Author: [404] Deadbeat, Aimz =(dp)=
//	@file Created: 23/11/2012 13:51
//	@file Args:

private ["_fuelEmpty","_fuelFull"];

_fuelEmpty = player getVariable "fuelEmpty";
_fuelFull = player getVariable "fuelFull";

if (player getVariable "fuelEmpty" > 0) then
{
	player setVariable ["fuelFull",_fuelEmpty + 1,false]; 
	player setVariable["fuelEmpty",_fuelEmpty - 1,false];
	hint "Your jerry can is now full.";
}
else
{
	hint "You have no empty jerry can.";
};
