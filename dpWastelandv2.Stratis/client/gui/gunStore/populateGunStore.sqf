
//	@file Version: 1.0
//	@file Name: populateGunStore.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:13
//	@file Args: [int (0 = populate list with guns 1 = populate list with ammo 2 = populate list with equipment)]

#include "dialog\gunstoreDefines.sqf";
disableSerialization;

_switch = _this select 0;

// Grab access to the controls
_dialog = findDisplay gunshop_DIALOG;
_gunlisttext = _dialog displayCtrl gunshop_gun_TEXT;
_gunpicture = _dialog displayCtrl gunshop_gun_pic;
_gunlist = _dialog displayCtrl gunshop_gun_list;								
_gunInfo = _dialog displayCtrl gunshop_gun_Info;

switch(_switch) do 
{
	case 0: 
	{
		//Clear the list
		lbClear _gunlist;
		_gunlist lbSetCurSel -1;
		_gunpicture ctrlSettext "";
		_gunlisttext ctrlSettext "";
        _gunInfo ctrlSetStructuredText parseText "";

		// Populate the gun shop weapon list
		{
			_gunlistIndex = _gunlist lbAdd format["%1",_x select 1];
		} forEach weaponsArray;
	};
	
	case 1:
	{
		//Clear the list
		lbClear _gunlist;
		_gunlist lbSetCurSel -1;
		_gunpicture ctrlSettext "";
		_gunlisttext ctrlSettext "";
        _gunInfo ctrlSetStructuredText parseText "";

		// Populate the gun shop weapon list
		{
			_gunlistIndex = _gunlist lbAdd format["%1",_x select 1];
		} forEach ammoArray;	
	};

	case 2:
	{
		//Clear the list
		lbClear _gunlist;
		_gunlist lbSetCurSel -1;
		_gunpicture ctrlSettext "";
		_gunlisttext ctrlSettext "";
        _gunInfo ctrlSetStructuredText parseText "";

		// Populate the gun shop weapon list
		{
			_gunlistIndex = _gunlist lbAdd format["%1",_x select 1];
		} forEach accessoriesArray;	
	};
};