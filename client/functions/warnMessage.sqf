if (isServer) exitWith {};  
 
private ["_warnText","_playerName","_adminName","_message"];
_warnText = _this select 0;
_playerName = _this select 1;
_adminName = _this select 2;

if (name player == _playerName) then 
{
	_message = format ["Admin %2: %1", _warnText, _adminName];
	titleText [_message, "plain"]; 
	titleFadeOut 10;
};