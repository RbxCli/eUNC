--!strict

--[=[
    Contains functions related to rendering operations.
    @class rendering
    @tag Library
]=]
local rendering = {}

--[=[
    Attempts to project the position/ part into the screen space.

    @param partOrPosition BasePart | Vector3 -- The part or Position to project.
    @return (Vector2, boolean) -- A tuple containing first a Vector2, representing the position of the object in pixels, with containing second whether the object is visible on screen.

    :::info Implementation for Part objects
        The underlying implementation may vary for Part objects. Some implementations may cache positions and update them periodically, or they may retrieve the position on call.
    :::

    :::warning
        This function may support positions that are slightly off-screen on some implementations, these yield matematically correct projections, but the X and Y values may be extremely high.

        For off-screen coordinates, the boolean present on the tuple should be true. For a more accurate check use rendering.IsOnScreen
    :::
]=]
function rendering.WorldToScreen(partOrPosition: BasePart | Vector3): (Vector2, boolean)
	return Vector2.zero, false
end

--[=[
    Validates if the position/ part will be visible within the viewport of the game.

    @param partOrPosition BasePart | Vector3 -- The part or Position to project.
    @return boolean --  If true, the position is visible on screen and the coordinates are within the screen viewport.

    :::info Implementation for Part objects
        The underlying implementation may vary for Part objects. Some implementations may cache positions and update them periodically, or they may retrieve the position on call.
    :::
]=]
function rendering.IsOnScreen(partOrPosition: BasePart | Vector3): boolean
	return false
end

return rendering
