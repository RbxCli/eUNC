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
        This function may support positions that are slightly off-screen on some implementations.
    :::
]=]
function rendering.WorldToScreen(partOrPosition: BasePart | Vector3): (Vector2, boolean)
	return Vector2.zero, false
end

return rendering
