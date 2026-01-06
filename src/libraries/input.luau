--[=[
    The input library provides low-level simulation of keyboard and mouse events.
    Inputs are synthesized to the Roblox window.
    @class input
    @tag Library
]=]
local input = {}

--[=[
    Presses and holds a keyboard key until key_up is called.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Key is already pressed" -- The key is already 'held down'.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key.
    @within input
]=]
function input.key_down(key: number) end

--[=[
    Releases a previously pressed keyboard key.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Key is not pressed" -- The key is already 'released'.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key.
    @within input
]=]
function input.key_up(key: number) end

--[=[
    Presses and releases a keyboard key in a single call.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key.
    @within input
]=]
function input.key_click(key: number) end

--[=[
    Returns whether the specified key is currently pressed according to the internal library state.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key.
    @return boolean -- True if the key is currently held down.
    @within input
]=]
function input.is_key_down(key: number): boolean
	return false
end

--[=[
    Presses and holds a mouse button.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Mouse button is already pressed" -- The mouse button is already 'held down'.
    @error "Invalid or unsupported mouse button" -- The Mouse VK code was invalid or is not supported.
    @param button number -- The button code (e.g., 1 for Left, 2 for Right).
    @within input
]=]
function input.mouse_down(button: number) end

--[=[
    Releases a previously pressed mouse button.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Mouse button is not pressed" -- The mouse button is already 'released'.
    @error "Invalid or unsupported mouse button" -- The Mouse VK code was invalid or is not supported.
    @param button number -- The button code (e.g., 1 for Left, 2 for Right).
    @within input
]=]
function input.mouse_up(button: number) end

--[=[
    Returns whether the specified mouse button is currently pressed.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Invalid or unsupported mouse button" -- The Mouse VK code was invalid or is not supported.
    @param button number -- The button code.
    @return boolean -- True if the button is held down.
    @within input
]=]
function input.is_mouse_down(button: number): boolean
	return false
end

--[=[
    Performs one or more mouse clicks sequentially.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Click count must be greater than 0" -- The count parameter was less than 1 or equal to 0.
    @error "Invalid or unsupported mouse button" -- The Mouse VK code was invalid or is not supported.
    @param button number -- The button code.
    @param count number? -- How many times to click (defaults to 1).
    @within input
]=]
function input.mouse_click(button: number, count: number?) end

--[=[
    Moves the mouse cursor instantly to the given absolute screen position.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @param position Vector2 -- The absolute XY screen coordinates.
    @within input
]=]
function input.mouse_move_absolute(position: Vector2) end

--[=[
    Moves the mouse cursor instantly by the given offset relative to its current position.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @param offset Vector2 -- The XY offset to move by.
    @within input
]=]
function input.mouse_move_relative(offset: Vector2) end

--[=[
    Smoothly moves the mouse cursor to the target position over a period of time.
    This function yields the current thread until the move is complete.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Time must be a positive number" -- The timeInSeconds parameter was not a positive number.
    @param position Vector2 -- The target absolute XY position.
    @param timeInSeconds number -- The duration of the movement.
    @within input
]=]
function input.mouse_move_tween(position: Vector2, timeInSeconds: number) end

--[=[
    Moves the mouse cursor instantly to the center of the given Roblox UI instance.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Instance must be a valid UI Instance" -- The object was not an Instance object of type GuiObject.
    @error "Instance is not visible or has no absolute position" -- The GuiObject was not visible or had no absolute position.
    @param instance Instance -- The GuiObject to target.
    @within input
]=]
function input.mouse_move_instance(instance: Instance) end

--[=[
    Smoothly moves the mouse cursor to the center of the given Roblox UI instance.
    This function yields the current thread until the move is complete.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Instance must be a valid UI Instance" -- The object was not an Instance object of type GuiObject.
    @error "Instance is not visible or has no absolute position" -- The GuiObject was not visible or had no absolute position.
    @error "Time must be a positive number" -- The timeInSeconds parameter was not a positive number.
    @param instance Instance -- The GuiObject to target.
    @param timeInSeconds number -- The duration of the movement.
    @within input
]=]
function input.mouse_move_instance_tween(instance: Instance, timeInSeconds: number) end

--[=[
    Moves the mouse cursor to the center of the given Roblox UI instance and performs a mouse click.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Instance must be a valid UI Instance" -- The object was not an Instance object of type GuiObject.
    @error "Invalid or unsupported mouse button" -- The Mouse VK code was invalid or is not supported.
    @error "Instance is not visible or interactable" -- The GuiObject was not visible or isn't interactable.
    @param instance Instance -- The GuiObject to target.
    @param button number -- The button VK code.
    @within input
]=]
function input.mouse_click_instance(instance: Instance, button: number) end

--[=[
    Scrolls the mouse wheel by the given delta amount.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @param delta number -- The amount to scroll (positive for up, negative for down).
    @within input
]=]
function input.mouse_scroll(delta: number) end

--[=[
    Returns whether the Roblox window is currently in focus.

    ### Remark:
    It is recommended to call this function before performing any input sequence. 
    The input library requires that Roblox be focused.

    @return boolean -- True if the window is currently focused.
    @within input
]=]
function input.is_window_focused(): boolean
	return false
end

return input
