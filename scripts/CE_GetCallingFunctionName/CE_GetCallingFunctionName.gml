/// @func CE_GetCallingFunctionName()
/// @desc Retrieves name of the calling function.
/// @return {string} The name of the calling function.
function CE_GetCallingFunctionName()
{
	gml_pragma("forceinline");
	var _name = debug_get_callstack(/*2*/)[1]; // TODO: Check if this argument works in YYC already
	_name = string_replace(_name, "gml_Script_", "");
	var _pos = string_pos(":", _name);
	if (_pos > 0)
	{
		_name = string_copy(_name, 1, _pos - 1);
	}
	return _name;
}