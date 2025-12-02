--!strict

--[=[
    Contains methods and fields that are required by the standard in Instance objects. 
    @class instance
    @tag Class
]=]
local instance = {}

type instance = {}

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
    Retrieves the children for the instance. 

    @return { instance } -- All children of the instance

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:GetChildren(): { instance }
	return table.create(0)
end

--[=[
    Retrieves the descendants for the instance. 

    @return { instance } -- All descendants of the instance

    :::warning Performance
        This function may be **very** slow. 

        Avoid using it if possible.
    :::

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:GetDescendants(): { instance }
	return table.create(0)
end

--[=[
    Retrieves the fully qualified name for the given instance.

    @return string -- The fully qualified name for the instance.

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:GetFullName(): string
	return ""
end

--[=[
    Checks the immediate Class of the object.

    @param className string -- The expected class name 
    @return boolean -- Whether the given class name is equal to the one the instance possesses.

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:OfClass(className: string): boolean
	return false
end

--[=[
    Attempts to find the first child on the instance which matches the given name.

    @param name string -- The instance name
    @return instance? -- An instance, which may be null if it was not found.


    :::warning Performance
        This function may silently performs GetChildren for every invocation, if you are going to be repeatedly getting children, and you know they may not suddenly change, it is better you cache the list and retrieve them yourself.
    :::
    
    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:FindFirstChild(name: string): instance?
	return nil
end

--[=[
    Attempts to find the first child on the instance which matches the given class name.

    @param className string -- The class name of the target instance
    @return instance? -- An instance, which may be null if it was not found.


    :::warning Performance
        This function may silently performs GetChildren for every invocation, if you are going to be repeatedly getting children, and you know they may not suddenly change, it is better you cache the list and retrieve them yourself.
    :::
    
    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:FindFirstChildOfClass(className: string): instance?
	return nil
end

--[=[
    Attempts to find the first child on the instance whose class matches or inherits from the given class.

    @param className string -- The class name of the target instance
    @return instance? -- An instance, which may be null if it was not found.


    :::warning Performance
        This function may silently performs GetChildren for every invocation, if you are going to be repeatedly getting children, and you know they may not suddenly change, it is better you cache the list and retrieve them yourself.
    :::
    
    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:FindFirstChildWhichIsA(className: string): instance?
	return nil
end

--[=[
    Attempts to retrieve the attribute with the given name.

    @param attributeName string -- The name of the target attribute.
    @return any? -- The value of the attribute, which may be nil.

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:GetAttribute(attributeName: string): any?
	return nil
end

--[=[
    Attempts to retrieve all attributes of the instance.

    @return { [string]: any? } -- A dictionary containinig all attributes available with their names as the key.

    :::info Locking
        This function requires locking to succeed.
    :::
]=]
function instance:GetAttributes(): { [string]: any }
	return {}
end


return instance
