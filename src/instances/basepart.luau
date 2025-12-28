--!strict

--[=[
    Contains methods and fields that are required by the standard in BasePart objects.

    This class inherits from the Instance class.
    
    @class BasePart
    @tag Instances
]=]
local basePart = {}

--[=[
    @prop Position Vector3
    @within BasePart

    The current world position for this part.

    :::info Remarks
        Writing to this value may be slower than ideal, due to this, prevent writing to this property if possible.
    :::
]=]
basePart.Position = Vector3.new()

--[=[
    @prop CFrame CoordinateFrame
    @within BasePart

    The coordinate frame representing the position and rotation of this part in the world.

    :::info Remarks
        Writing to this value may be slower than ideal, due to this, prevent writing to this property if possible.
    :::
]=]
basePart.CFrame = CFrame.new()

--[=[
    @prop Size Vector3
    @within BasePart

    The size the part holds in the physics engine.

    :::info Remarks
        Modifying this property will not modify the visual size of the part, only its physical collision size.
    :::
]=]
basePart.Size = Vector3.new()

--[=[
    @prop IsNetworkOwner boolean
    @within BasePart
    @readonly

    Whether or not the LocalPlayer is the owner of this part for physics replication.
]=]
basePart.IsNetworkOwner = false

--[=[
    @prop IsNetworkOwner boolean
    @within BasePart
    
    Whether or not the Part is reported as sleeping for physics replication.
]=]
basePart.NetworkIsSleeping = false

--[=[
    @prop Anchored boolean
    @within BasePart
    
    Whether or not the Part is being simulated by the Physics Engine.
]=]
basePart.Anchored = false

--[=[
    @prop CanCollide boolean
    @within BasePart
    
    Whether or not the Part is collidable within the Physics Engine.
]=]
basePart.CanCollide = false

--[=[
    @prop CanQuery boolean
    @within BasePart
    
    Whether or not the Part can be queried for physics interactions.
]=]
basePart.CanQuery = false

--[=[
    @prop CanTouch boolean
    @within BasePart
    
    Whether or not the Part will raise Touch events when it interacts with other parts.
]=]
basePart.CanTouch = false

--[=[
    @prop NetworkOwnerV3 RaknetID
    @within BasePart
    @external RaknetID /docs/Roblox/NetworkIds

    The RakNet ID for the owner of this part.
]=]
basePart.NetworkOwnerV3 = 0

--[=[
    @prop AssemblyLinearVelocity Vector3
    @within BasePart

    The linear velocity of the part in the assembly.
]=]
basePart.AssemblyLinearVelocity = 0

--[=[
    @prop AssemblyAngularVelocity Vector3
    @within BasePart

    The angular velocity of the part in the assembly.
]=]
basePart.AssemblyAngularVelocity = Vector3.new()


return basePart
