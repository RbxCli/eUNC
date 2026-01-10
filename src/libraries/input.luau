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
    @param key number -- The Virtual Key (VK) code of the key. (see KeyCode Library)
    @within input
]=]
function input.key_down(key: number) end

--[=[
    Releases a previously pressed keyboard key.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Key is not pressed" -- The key is already 'released'.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key. (see KeyCode Library)
    @within input
]=]
function input.key_up(key: number) end

--[=[
    Presses and releases a keyboard key in a single call.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key. (see KeyCode Library)
    @within input
]=]
function input.key_click(key: number) end

--[=[
    Returns whether the specified key is currently pressed according to the internal library state.
    
    @error "Roblox is not focused" -- Roblox's windows is not the focused window.
    @error "Invalid or unsupported key" -- The VK code was invalid or is not supported.
    @param key number -- The Virtual Key (VK) code of the key. (see KeyCode Library)
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

--- @class KeyCode
--- @tag Library
--- Defines the available virtual key codes for input operations (Win32 VK Codes).
local KeyCode = {}

--- @prop LeftButton number
--- @within KeyCode
--- @readonly
KeyCode.LeftButton = 0x01

--- @prop RightButton number
--- @within KeyCode
--- @readonly
KeyCode.RightButton = 0x02

--- @prop MiddleButton number
--- @within KeyCode
--- @readonly
KeyCode.MiddleButton = 0x04

--- @prop Backspace number
--- @within KeyCode
--- @readonly
KeyCode.Backspace = 0x08

--- @prop Tab number
--- @within KeyCode
--- @readonly
KeyCode.Tab = 0x09

--- @prop Clear number
--- @within KeyCode
--- @readonly
KeyCode.Clear = 0x0C

--- @prop Return number
--- @within KeyCode
--- @readonly
KeyCode.Return = 0x0D

--- @prop Shift number
--- @within KeyCode
--- @readonly
KeyCode.Shift = 0x10

--- @prop Control number
--- @within KeyCode
--- @readonly
KeyCode.Control = 0x11

--- @prop Alt number
--- @within KeyCode
--- @readonly
KeyCode.Alt = 0x12

--- @prop Pause number
--- @within KeyCode
--- @readonly
KeyCode.Pause = 0x13

--- @prop CapsLock number
--- @within KeyCode
--- @readonly
KeyCode.CapsLock = 0x14

--- @prop Escape number
--- @within KeyCode
--- @readonly
KeyCode.Escape = 0x1B

--- @prop Space number
--- @within KeyCode
--- @readonly
KeyCode.Space = 0x20

--- @prop PageUp number
--- @within KeyCode
--- @readonly
KeyCode.PageUp = 0x21

--- @prop PageDown number
--- @within KeyCode
--- @readonly
KeyCode.PageDown = 0x22

--- @prop End number
--- @within KeyCode
--- @readonly
KeyCode.End = 0x23

--- @prop Home number
--- @within KeyCode
--- @readonly
KeyCode.Home = 0x24

-- Arrows
--- @prop Left number
--- @within KeyCode
--- @readonly
KeyCode.Left = 0x25

--- @prop Up number
--- @within KeyCode
--- @readonly
KeyCode.Up = 0x26

--- @prop Right number
--- @within KeyCode
--- @readonly
KeyCode.Right = 0x27

--- @prop Down number
--- @within KeyCode
--- @readonly
KeyCode.Down = 0x28

-- Editing
--- @prop Select number
--- @within KeyCode
--- @readonly
KeyCode.Select = 0x29

--- @prop Print number
--- @within KeyCode
--- @readonly
KeyCode.Print = 0x2A

--- @prop Execute number
--- @within KeyCode
--- @readonly
KeyCode.Execute = 0x2B

--- @prop PrintScreen number
--- @within KeyCode
--- @readonly
KeyCode.PrintScreen = 0x2C

--- @prop Insert number
--- @within KeyCode
--- @readonly
KeyCode.Insert = 0x2D

--- @prop Delete number
--- @within KeyCode
--- @readonly
KeyCode.Delete = 0x2E

--- @prop Help number
--- @within KeyCode
--- @readonly
KeyCode.Help = 0x2F

-- Numbers
--- @prop Zero number
--- @within KeyCode
--- @readonly
KeyCode.Zero = 0x30

--- @prop One number
--- @within KeyCode
--- @readonly
KeyCode.One = 0x31

--- @prop Two number
--- @within KeyCode
--- @readonly
KeyCode.Two = 0x32

--- @prop Three number
--- @within KeyCode
--- @readonly
KeyCode.Three = 0x33

--- @prop Four number
--- @within KeyCode
--- @readonly
KeyCode.Four = 0x34

--- @prop Five number
--- @within KeyCode
--- @readonly
KeyCode.Five = 0x35

--- @prop Six number
--- @within KeyCode
--- @readonly
KeyCode.Six = 0x36

--- @prop Seven number
--- @within KeyCode
--- @readonly
KeyCode.Seven = 0x37

--- @prop Eight number
--- @within KeyCode
--- @readonly
KeyCode.Eight = 0x38

--- @prop Nine number
--- @within KeyCode
--- @readonly
KeyCode.Nine = 0x39

-- Letters
--- @prop A number
--- @within KeyCode
--- @readonly
KeyCode.A = 0x41

--- @prop B number
--- @within KeyCode
--- @readonly
KeyCode.B = 0x42

--- @prop C number
--- @within KeyCode
--- @readonly
KeyCode.C = 0x43

--- @prop D number
--- @within KeyCode
--- @readonly
KeyCode.D = 0x44

--- @prop E number
--- @within KeyCode
--- @readonly
KeyCode.E = 0x45

--- @prop F number
--- @within KeyCode
--- @readonly
KeyCode.F = 0x46

--- @prop G number
--- @within KeyCode
--- @readonly
KeyCode.G = 0x47

--- @prop H number
--- @within KeyCode
--- @readonly
KeyCode.H = 0x48

--- @prop I number
--- @within KeyCode
--- @readonly
KeyCode.I = 0x49

--- @prop J number
--- @within KeyCode
--- @readonly
KeyCode.J = 0x4A

--- @prop K number
--- @within KeyCode
--- @readonly
KeyCode.K = 0x4B

--- @prop L number
--- @within KeyCode
--- @readonly
KeyCode.L = 0x4C

--- @prop M number
--- @within KeyCode
--- @readonly
KeyCode.M = 0x4D

--- @prop N number
--- @within KeyCode
--- @readonly
KeyCode.N = 0x4E

--- @prop O number
--- @within KeyCode
--- @readonly
KeyCode.O = 0x4F

--- @prop P number
--- @within KeyCode
--- @readonly
KeyCode.P = 0x50

--- @prop Q number
--- @within KeyCode
--- @readonly
KeyCode.Q = 0x51

--- @prop R number
--- @within KeyCode
--- @readonly
KeyCode.R = 0x52

--- @prop S number
--- @within KeyCode
--- @readonly
KeyCode.S = 0x53

--- @prop T number
--- @within KeyCode
--- @readonly
KeyCode.T = 0x54

--- @prop U number
--- @within KeyCode
--- @readonly
KeyCode.U = 0x55

--- @prop V number
--- @within KeyCode
--- @readonly
KeyCode.V = 0x56

--- @prop W number
--- @within KeyCode
--- @readonly
KeyCode.W = 0x57

--- @prop X number
--- @within KeyCode
--- @readonly
KeyCode.X = 0x58

--- @prop Y number
--- @within KeyCode
--- @readonly
KeyCode.Y = 0x59

--- @prop Z number
--- @within KeyCode
--- @readonly
KeyCode.Z = 0x5A

--- @prop LWin number
--- @within KeyCode
--- @readonly
KeyCode.LWin = 0x5B

--- @prop RWin number
--- @within KeyCode
--- @readonly
KeyCode.RWin = 0x5C

--- @prop Apps number
--- @within KeyCode
--- @readonly
KeyCode.Apps = 0x5D

--- @prop NumPad0 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad0 = 0x60

--- @prop NumPad1 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad1 = 0x61

--- @prop NumPad2 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad2 = 0x62

--- @prop NumPad3 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad3 = 0x63

--- @prop NumPad4 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad4 = 0x64

--- @prop NumPad5 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad5 = 0x65

--- @prop NumPad6 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad6 = 0x66

--- @prop NumPad7 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad7 = 0x67

--- @prop NumPad8 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad8 = 0x68

--- @prop NumPad9 number
--- @within KeyCode
--- @readonly
KeyCode.NumPad9 = 0x69

--- @prop Multiply number
--- @within KeyCode
--- @readonly
KeyCode.Multiply = 0x6A

--- @prop Add number
--- @within KeyCode
--- @readonly
KeyCode.Add = 0x6B

--- @prop Separator number
--- @within KeyCode
--- @readonly
KeyCode.Separator = 0x6C

--- @prop Subtract number
--- @within KeyCode
--- @readonly
KeyCode.Subtract = 0x6D

--- @prop Decimal number
--- @within KeyCode
--- @readonly
KeyCode.Decimal = 0x6E

--- @prop Divide number
--- @within KeyCode
--- @readonly
KeyCode.Divide = 0x6F

--- @prop F1 number
--- @within KeyCode
--- @readonly
KeyCode.F1 = 0x70

--- @prop F2 number
--- @within KeyCode
--- @readonly
KeyCode.F2 = 0x71

--- @prop F3 number
--- @within KeyCode
--- @readonly
KeyCode.F3 = 0x72

--- @prop F4 number
--- @within KeyCode
--- @readonly
KeyCode.F4 = 0x73

--- @prop F5 number
--- @within KeyCode
--- @readonly
KeyCode.F5 = 0x74

--- @prop F6 number
--- @within KeyCode
--- @readonly
KeyCode.F6 = 0x75

--- @prop F7 number
--- @within KeyCode
--- @readonly
KeyCode.F7 = 0x76

--- @prop F8 number
--- @within KeyCode
--- @readonly
KeyCode.F8 = 0x77

--- @prop F9 number
--- @within KeyCode
--- @readonly
KeyCode.F9 = 0x78

--- @prop F10 number
--- @within KeyCode
--- @readonly
KeyCode.F10 = 0x79

--- @prop F11 number
--- @within KeyCode
--- @readonly
KeyCode.F11 = 0x7A

--- @prop F12 number
--- @within KeyCode
--- @readonly
KeyCode.F12 = 0x7B

--- @prop NumLock number
--- @within KeyCode
--- @readonly
KeyCode.NumLock = 0x90

--- @prop ScrollLock number
--- @within KeyCode
--- @readonly
KeyCode.ScrollLock = 0x91

--- @prop LeftShift number
--- @within KeyCode
--- @readonly
KeyCode.LeftShift = 0xA0

--- @prop RightShift number
--- @within KeyCode
--- @readonly
KeyCode.RightShift = 0xA1

--- @prop LeftControl number
--- @within KeyCode
--- @readonly
KeyCode.LeftControl = 0xA2

--- @prop RightControl number
--- @within KeyCode
--- @readonly
KeyCode.RightControl = 0xA3

--- @prop LeftAlt number
--- @within KeyCode
--- @readonly
KeyCode.LeftAlt = 0xA4

--- @prop RightAlt number
--- @within KeyCode
--- @readonly
KeyCode.RightAlt = 0xA5

return input
