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
    
    @error "table must be an Array<RbxInstance>" -- The ignoreList parameter is not a valid array of Instances.
    @error "direction vector cannot be a zero vector" -- The direction vector provided is a zero vector (Magnitude is 0).
    @error "distance cannot be less or equal to 0" -- The distance provided is negative or zero.
    @error "direction vector resulted in a zero vector" -- The direction vector normalized and scaled by distance resulted in a zero vector.
    @error "collection contained an object which was not an RbxInstance." -- The ignoreList contains an element that is not an Instance.
    @error "raycast unavailable" -- The physics engine is not currently available, likely due to physics updates being disabled.
]=]
function physics.raycast(origin: vector, direction: vector, distance: number, ignoreList: { Instance }): RaycastResult?
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

--[=[
    Retrieves the internal 'pool' index the part is assigned to within the RbxCli physics engine.
    
    The pool determines the update rate of the part on the overlay's visuals and affects how 'fresh' the data returned by other physics functions is.
    
    @param part Instance -- The BasePart to query.
    @return number -- The pool index the part is located in.
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @error "object is not tracked" -- The part is not currently tracked by RbxCli.
    @within physics
]=]
function physics.get_part_pool(part: Instance): number
	return 0
end

--[=[
    Checks if the specified BasePart is actively being updated by the RbxCli physics engine.
    
    ### Behavior
    *   Parts inside Characters are typically ignored and will return `false`.
    *   Newly created parts (less than ~20 seconds old) may return `false` until they are picked up by the worker.

    A memory read may occur if physics updating is disabled to ensure the most accurate data is returned.
    
    @param part Instance -- The BasePart to check.
    @return boolean -- True if the part is actively being updated.
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @within physics
]=]
function physics.is_part_tracked(part: Instance): boolean
	return false
end

--[=[
    Retrieves the cached 'Size' of the part from the last RbxCli update.
    
    ### Performance Note
    This function reads from RbxCli's internal cache rather than reading directly from Roblox memory. 
    *   **Pros:** It is significantly faster than standard property access.
    *   **Cons:** The data may be slightly out of date depending on the part's update pool.

    A memory read may occur if physics updating is disabled to ensure the most accurate data is returned.

    @param part Instance -- The BasePart to query.
    @return Vector3 -- The cached size of the part.
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @error "object is not tracked" -- The part is not currently in the physics engine.
    @within physics
]=]
function physics.get_tracked_size(part: Instance): Vector3
	return Vector3.zero
end

--[=[
    Retrieves the cached 'CFrame' of the part from the last RbxCli update.
    
    ### Performance Note
    This function reads from RbxCli's internal cache rather than reading directly from Roblox memory.
    *   **Pros:** It is significantly faster than standard property access.
    *   **Cons:** The data may be slightly out of date depending on the part's update pool.
    
    @param part Instance -- The BasePart to query.
    @return CFrame -- The cached CFrame of the part.
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @error "object is not tracked" -- The part is not currently in the physics engine.
    @within physics
]=]
function physics.get_tracked_cframe(part: Instance): CFrame
	return CFrame.new()
end

--[=[
    Retrieves whether the given part is eligible to be tracked and updated by the physics engine.
    
    This indicates if the part has been explicitly enabled or disabled for updates within RbxCli's PhysicsWorld (e.g., via configuration or internal logic).
    
    @param part Instance -- The BasePart to check.
    @return boolean -- True if the part is allowed to be tracked.
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @within physics
]=]
function physics.can_part_be_tracked(part: Instance): boolean
	return false
end

--[=[
    Checks if part data is being updated.
    
    If this function returns false, it indicates that parts are not being updated. In this case, RbxCli will fall back to reading from raw memory instead of from its built-in cache. This may lead to reduced execution speed or for some APIs to completely fail.
    
    @return boolean -- True if parts are being updated internally.
    @within physics
]=]
function physics.are_parts_updated(): boolean
	return false
end

--[=[
    Determines if a given point in world space is located within the bounds of a specified BasePart.
    
    @param point Vector3 -- The world space point to check.
    @param part Instance -- The BasePart to test against.
    
    @return boolean -- True if the point is inside the part, false otherwise.
    
    @error "object was freed" -- The instance passed has been destroyed.
    @error "variant cast failed" -- The instance passed is not a BasePart.
    @error "failed to retrieve instance data." -- Memory read failure/ part data unavailable.

    @within physics
]=]
function physics.is_point_in_part(point: Vector3, part: Instance): boolean
	return false
end

--[=[
    Determines if a given point in world space is located within the bounds of an box volume defined by a CFrame and size.
    
    @param point Vector3 -- The world space point to check.
    @param boxCFrame CFrame -- The CFrame representing the center and orientation of the box.
    @param boxSize Vector3 -- The size of the box along each axis.
    
    @return boolean -- True if the point is inside the box volume, false otherwise.

    @within physics
]=]
function physics.is_point_in_box_volume(point: Vector3, boxCFrame: CFrame, boxSize: Vector3): boolean
	return false
end

--[=[
    Determines if a given point in world space is located within the bounds of a sphere volume defined by a center point and radius.
    
    @param point Vector3 -- The world space point to check.
    @param sphereCenter Vector3 -- The center of the sphere.
    @param sphereRadius number -- The radius of the sphere.
    @return boolean -- True if the point is inside the sphere volume, false otherwise.

    @within physics
]=]
function physics.is_point_in_sphere_volume(point: Vector3, sphereCenter: Vector3, sphereRadius: number): boolean
	return false
end

return physics
