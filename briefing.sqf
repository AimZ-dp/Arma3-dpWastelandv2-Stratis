waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["changelog", "Change Log"];
player createDiarySubject ["info", "Info"];

player createDiaryRecord["changelog",
[
"=(dp)=",
"
<br/>1.1<br/>
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

player createDiaryRecord["info",
[
"Credits",
"
<br/>
	404 Team:<br/><br/>
	Deadbeat<br/>
	Costlyy<br/>
	Pulse<br/>
	Domuk<br/>
"
]
];