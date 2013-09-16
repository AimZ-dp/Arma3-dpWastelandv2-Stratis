//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define serverAdminMenu_option 50007
disableSerialization;

private ["_panelType","_displayAdmin","_displayMod","_displayServerAdmin","_displayDebug","_modSelect","_adminSelect","_serverAdminSelect","_debugSelect"];
_uid = getPlayerUID player;
if (_uid in serverdpAdministrators) then {
	_panelType = _this select 0;
	
	_displayServerAdmin = uiNamespace getVariable "ServerAdminMenu";
	_serverAdminSelect = _displayServerAdmin displayCtrl serverAdminMenu_option;
	
	switch (_panelType) do
	{
	    case 2: //Server dp Administrator panel
	    {
			switch (lbCurSel _serverAdminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\gui\adminPanel\playerManagement.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\gui\adminPanel\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\gui\adminPanel\playerTags.sqf";
			    };
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+500,true];
			    };
			    case 5: //PlayerIcons
			    {      
					if (allowPlayerIcons == "ON") then
					{
						allowPlayerIcons = "OFF";					
					}
					else
					{
						allowPlayerIcons = "ON";
					};
					publicVariableServer "allowPlayerIcons";
				};
				case 6: //Groups
			    {      
					if (allowGroups == "ON") then
					{
						allowGroups = "OFF";					
					}
					else
					{
						allowGroups = "ON";
					};
					publicVariableServer "allowGroups";
			    };
				case 7: //Clock Cycle
			    {      
					if (clockCycle == "DAY ONLY") then
					{
						clockCycle = "DAY AND NIGHT";					
					}
					else
					{
						if (clockCycle == "DAY AND NIGHT") then
						{
							clockCycle = "NIGHT ONLY";					
						}
						else
						{
							clockCycle = "DAY ONLY";	
						};
					};
					publicVariableServer "clockCycle";
			    };
			};
	    };
	};
} else {
  exit;  
};