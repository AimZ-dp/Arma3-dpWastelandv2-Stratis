//	@file Version: 1.0
//	@file Name: checkAdmin.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

private ["_uid","_handle"];

_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators) OR (_uid in serverdpAdministrators)) then {
    if ((_uid in moderators)) then {
		//execVM "client\systems\adminPanel\loadModeratorMenu.sqf";
		// SOME IS HERE WHEN THEY SHOULDN'T BE
        hint "Welcome Moderator";		
	};
    if ((_uid in administrators)) then {
		//[] execVM "client\systems\adminPanel\loadAdministratorMenu.sqf";
		// SOME IS HERE WHEN THEY SHOULDN'T BE
        hint "Welcome Admin";		
	};
    if ((_uid in serverAdministrators)) then {
		//execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
		// SOME IS HERE WHEN THEY SHOULDN'T BE
        hint "Welcome Server Admin";		
	};	
    if ((_uid in serverdpAdministrators)) then {
		execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
        hint "Welcome =(dp)= Owner";		
	};	
} else {
    sleep 1;
    _handle = player execVM "client\systems\adminPanel\checkAdmin2.sqf"; 
    waitUntil {scriptDone _handle};
};