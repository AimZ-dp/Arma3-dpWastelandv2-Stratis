waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["changelog", "Change Log"];
player createDiarySubject ["rules", "Rules"];
player createDiarySubject ["info", "Info"];

player createDiaryRecord["changelog",
[
"=(dp)=",
"
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
"Intro",
"
<br/>
	Rule 1:<br/><br/>
	Blah Blah Blah<br/>
	Blah Blah Blah<br/>
"
]
];
player createDiaryRecord["rules",
[
"More Stuff",
"
<br/>
	General Rules:<br/><br/>
	Blah Blah Blah<br/>
	Blah Blah Blah<br/>
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