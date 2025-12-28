--[=[
    The physics library provides access to the world's physical state, allowing for spatial queries such as raycasting.
    @class physics
    @tag Library
]=]
local physics = {}

--[=[
    Performs a raycast against the physical world.

    The ray is constructed using an origin and a direction, which is then scaled by the provided distance.
    An exclusion list can be provided to ignore specific instances during the raycast calculation.

    ### Example Usage:
    ```lua
    local result = physics.raycast(Vector3.new(0, 10, 0), Vector3.new(0, -1, 0), 100, { workspace.BasePlate })
    if result then
        print("Hit " .. result.instance.Name .. " at " .. tostring(result.position))
    end
    ```

    @param origin vector -- The starting point of the ray.
    @param direction vector -- The unit direction of the ray.
    @param distance number -- The maximum distance the ray should travel.
    @param ignoreList {Instance} -- An array containing instances that the ray should ignore.
    @return RaycastResult? -- A table containing hit information, or nil if no hit occurred.
    @within physics
]=]
function physics.raycast(origin: vector, direction: vector, distance: number, ignoreList: {Instance}): RaycastResult?
	return nil
end

--[=[
    @interface RaycastResult
    @within physics
    .distance number -- The distance from the origin to the hit position.
    .hit_successful boolean -- Whether the raycast successfully hit a surface.
    .position vector -- The world position where the ray hit.
    .instance Instance? -- The Instance that was hit by the ray.
]=]

return physics