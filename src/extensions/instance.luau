--!strict

--[=[
    Contains methods and fields that are required by the standard in Instance objects. 
    @class instance
]=]
local instance = {}

--[=[
    @prop Name string
    @within instance
    @readonly

    Contains the Name of the object.

    :::warning Readonly Validity
        This property may be safe to read/write on certain conditions. However this behaviour is not guaranteed by spec.
    :::
]=]
instance.Name = ""

--[=[
    @prop ClassName string
    @within instance
    @readonly

    Contains the ClassName of the object, held in its class descriptor.
]=]
instance.ClassName = ""

--[=[
    @prop Parent instance?
    @within instance
    @readonly

    The parent of the instance, may be nil.
]=]
instance.Parent = nil

--[=[
    @prop Address number
    @within instance
    @readonly

    The address of the instance in roblox memory.
]=]
instance.Address = 0

--[=[
    Performs an inheritance check, validating whether the object's class derives from the given `className`

    @param className string -- The name of the class that is checked for inheritance.
    @return boolean -- Whether the object's class inherits from className
]=]
function instance:IsA(className: string): boolean
	return false
end

--[=[
    Attempts to unlock the reference to the underlying instance. After this call, operations with the instance may crash, error or trigger undefined behaviour.

    @return boolean -- Whether the instance was unlocked successfully.

    :::info Safety
        Unlocking releases the reference for the tool to clear it up. It will not 'unlock' the object on the actual engine. 
    :::
]=]
function instance:Unlock(): boolean
	return false
end

--[=[
    Attempts to lock the reference to the underlying instance. After this call, all operations with it are valid. This guarantees no errors when calling functions.
    
    @return boolean -- Whether the instance was locked successfully.

    :::info Safety
        Locking guarantees that state of the object is maintained internally.
        
        This, however, does not make the object live longer, it just pins it on the tool's internal structures, keeping any relevant state and caches going.
    :::
]=]
function instance:Lock(): boolean
	return false
end

return instance
