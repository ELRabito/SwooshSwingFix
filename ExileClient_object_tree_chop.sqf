/**
 * ExileClient_object_tree_chop
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_treeModelNames", "_tree"];
_treeModelNames = getArray(missionConfigFile >> "CfgInteractionModels" >> "WoodSource" >> "models");
_tree = _treeModelNames call ExileClient_util_model_getLookAt;
if("Exile_Magazine_Swoosh" in (magazines player)) then {player removeMagazines "Exile_Magazine_Swing"};
if (!isNull _tree) then
{
	if (alive _tree) then 
	{
		["chopTreeRequest", [(netId _tree)]] call ExileClient_system_network_send;
	};
};
true