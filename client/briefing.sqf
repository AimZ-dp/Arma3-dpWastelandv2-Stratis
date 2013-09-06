
diag_log format["*** briefing Started ***"];

waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["changelog", "Change Log"];
player createDiarySubject ["rules", "Rules"];
player createDiarySubject ["info", "Info"];
player createDiarySubject ["website", "Website Details"];

player createDiaryRecord["changelog",
[
"=(dp)=",
"
<br/>2.1.1<br/>
		[Fixes] Updated scanner and time change.<br/>
<br/>2.1<br/>
		[Updates] Additional admin features and new scanner.<br/>
<br/>2.0<br/>
		[Updates] Major updates on all scripts to improve performance.<br/>
<br/>1.6<br/>
		[Updates] Optimised spawn scripts.<br/>
<br/>1.5<br/>
		[Updates] Included new missions.<br/>
		[Updates] Changed the way vehicles desertion time works.<br/>
<br/>1.4<br/>
		[Updates] Updated the vehicle classes for beta version.<br/>
		[Updates] Changed weapons in some crates.<br/>
		[Updates] Created a random spawn for vehicles after destroyed.<br/>
<br/>1.3<br/>
		[Updates] Updated the weapon classes for beta version.<br/>
		[Updates] Changed some of the prices in general store.<br/>
<br/>1.2<br/>
		[Updates] Updated the vehicle classes for beta version.<br/>
<br/>1.1<br/>
		[Added] Clean up scripts to try keep server smoother.<br/>
		[Fixed] Updated load in issue with losing ammo and scopes.<br/>
		[Update] Lots of tweaks to spawning and types of objects.<br/>
		[Update] Changed lots of scripts to keep server running smooth without need for restarts every day.<br/>
		<br/>
<br/>1.0<br/>
		[Note] Added and modified lots of issues, some things might not be so obvious.<br/>
		<br/>
"
]
];

player createDiaryRecord["changelog",
[
"404Games",
"
<br/>1.06<br/>
		[Fixed] Fix to make Ammo boxes moveable.(thanks to meat147).<br/>
		[Fixed] missing disabled color for money input error.(thanks to Sanjo).<br/>
		[Fixed] NV Goggles in cars and boxes.(thanks to Sanjo).<br/>
<br/>1.05<br/>
		[Added] Uniforms,Hats and Vests to the gunstore.<br/>
		[Added] Players now spawn with a backpack.<br/>
		[Fixed] Not able to get weapons out of vehicle.<br/>
		[Fixed] R3F Loading into vehicles.<br/>
		[Fixed] Gunstore locations so they can't be ran down by vehicles.<br/>
		[Fixed] Health Icon.<br/>
		[Fixed] Static helicopter spawning and no more explosions.<br/>
		[Fixed] Weapon crates can now be loaded into vehicles.<br/>
<br/>1.03<br/>
		[Added] - Light Armed Vehicle Mission (All armed cars).<br/>
		[Removed] - All armed cars from initial spawn for balance.<br/>
<br/>1.02<br/>
		[Fixed] - Respawning Vehicles<br/>
		[Fixed] - Deserted Vehicles (20Mins)<br/>
<br/>1.01<br/>
		[Fixed] - Gun Stores<br/>
		[Fixed] - Missions<br/>
		[Fixed] - General UI<br/>
		[Fixed] - Lots of other fixes<br/>
"
]
];



player createDiaryRecord["rules",
[
"General Rules",
"
<br/>
Rule 1:<br/>
- Anyone caught running cheat scripts will be banned (we share banlists with other servers)<br/>
<br/>
Rule 2:<br/>
- Do not set foot on or kill/shoot at anyone on the island at the very north of the map called Xiros. If caught doing this you will be slayed. If caught again you will be banned<br/>
<br/>
Rule 3:<br/>
- Do not steal from team mates bags. Punishment for doing so ranges from removal of weapons and/or cash,to being slayed, kicked or banned<br/>
<br/>
Rule 4:<br/>
- Do not intentionally teamkill. Punishment for doing so ranges from removal of weapons and/or cash,to being slayed, kicked or banned<br/>
<br/>
Rule 5:<br/>
- Do not talk in global unless it is an emergency. Type but do not talk. Anyone doing so will be warned, repeat offences will result in kick and/or ban<br/>
<br/>
Rule 6:<br/>
- Do not spam any other chat channel. Anyone doing so will be warned, repeat offences will result in kick and/or ban<br/>
<br/>
Rule 7:<br/>
- Do not grief or abuse team mates. Result will be kick and/or ban<br/>
"
]
];

player createDiaryRecord["rules",
[
"Game Play - Hardcore",
"
<br/>
Hardcore Mode:<br/>
- The dp Wasteland mod allows the admin to disable player tags and/or disable groups to give a harder more tactical game play (This has had good feedback apart for the odd troll).<br/>
- This is not difficult to understand or get use too, so please give it a go and dont whine.<br/>
- Tags are disabled for everyone, blufor, opfor and independents. Use your scanner to identify players (sometimes the coloured cap are a decoy).<br/>
- Think before shooting, even with tags off excessive team killing can result in a kick from the server.<br/>
- Try stay in cover and even talk over direct chat and engage with the other player.<br/>
- Remember independents and independants so dont complain if everyone kills you, if groups are disabled they are disabled for everyone.<br/>
 "
]
];

player createDiaryRecord["rules",
[
"Game Play - Standard",
"
<br/>
Please register on our website at http://dp-clan.enjin.com and join the (dp) wasteland community to find out what we are up to and what our future plans for the server are. Suggestions for future verions of (dp) wasteland are always welcome<br/><br/>
General Game Play:<br/>
- Each player starts with the following in their player menu: 1 food, 1 water, 1 single use medkit, 1 single use repair kit and 1 empty jerry can<br/>
- Jerry cans can be filled at the fuel station, the general stores, green oil barrels found around the island or by syphoning fuel from vehicles<br/>
- Loot dead bodies for money and players gear, items are no longer dropped<br/>
- To give someone an item you must stand close to them and use the player menu to give the selected item to the select player<br/>
- The general store sells, uniform items, food, water, single use medkits and repair kits and fuel<br/>
- There are usually 58 ground vehicles, 8 helis, 12 ammo/weapons crates, 12 survival items (food sacks, water containers) in the game at any one time<br/>
- Vehicles with mounted guns, wheeled apc's, tracked armour, armed heli's and extra ammo/weapons crates can be obtained by completing the regular in-game objectives<br/>
- Only the lower powered guns can be found in vehicles. Higher powered guns and launchers can be found in ammo/weapons crates or bought at gunstores<br/>
- Gunstores sell a full range of weaponry and ammo<br/>
- To build a base buy items from the construction store make sure to leave space for the objects to spawn in, vehicles and sandbags dont mix well<br/>
- The Scanner will detect the enemy and display their coloured tag above their head. This is only a 2% chance for a second. The scanner will also display team mates tags if the admin has disabled them for a hardcore game.<br/>
"
]
];

player createDiaryRecord["rules",
[
"Important",
"
<br/>
Be respectful to admins and they will be the same.<br/>
Remember the admins are gamers and want to game in the server too.<br/>
If you feel you have a valid reason to contest a ban you can get in touch with the admin team by registering on our website.<br/>
<br/>
http://dp-clan.enjin.com<br/>
"
]
];
player createDiaryRecord["website",
[
"Community",
"
<br/>
http://dp-clan.enjin.com<br/>
<br/>
Feel free to register on our website and use the forum.<br/>
By request of serval players we have added a donation module to the website.<br/>
"
]
];

player createDiaryRecord["info",
[
"Credits",
"
<br/>
	Credit due to the 404 Team who worked on the mod before I made my changes:<br/><br/>
	Deadbeat<br/>
	Costlyy<br/>
	Pulse<br/>
	Domuk<br/>
	Many other...<br/>
	
<br/>
	Credit due to whoever created the anti-hack used on most other mods...<br/><br/>	
"
]
];

diag_log format["*** briefing Finished ***"];