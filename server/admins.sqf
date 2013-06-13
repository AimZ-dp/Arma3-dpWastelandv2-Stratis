if(!X_Server) exitWith {};

//Admin menu access levels
moderators = []; 
publicVariable "moderators"; 
           
administrators = [];
publicVariable "administrators";

serverAdministrators = []; 
publicVariable "serverAdministrators";

serverdpAdministrators = ["76561197997049796", // AimZ
						"76561197968757638", // Dougal07
						"76561197974559017", // TandY
						"76561197990155710"  // Abbylad
                    ]; 
publicVariable "serverdpAdministrators";