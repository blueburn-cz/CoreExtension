var _dragging = gui.WidgetDragging;
if (_dragging != noone)
{
	var _mouseX = gui.MouseX;
	var _mouseY = gui.MouseY;
	var _event = new CE_GUIEvent(CE_EGuiEvent.Drag);
	_event.DiffX = gui.MouseDragXLast - _mouseX;
	_event.DiffY = gui.MouseDragYLast - _mouseY;
	_dragging.TriggerEvent(_event);
	_event.Destroy();
	gui.MouseDragXLast = _mouseX;
	gui.MouseDragYLast = _mouseY;
}