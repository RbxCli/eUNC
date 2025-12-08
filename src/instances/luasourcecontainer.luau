--!strict

--[=[
    Contains methods and fields that are required by the standard in LuaSourceContainer objects.

    This class inherits from the Instance class.
    
    @class LuaSourceContainer
    @tag Instances
]=]
local lscontainer = {}

--[=[
    @prop Bytecode buffer
    @within LuaSourceContainer
    @readonly

    Contains the luau bytecode of the script, can be used with a decompiler.

    :::warning Readonly Validity
        This property may be safe to read/write on certain conditions.
    :::
]=]
lscontainer.Bytecode = ""

--[=[
    @prop RawBytecode buffer
    @within LuaSourceContainer
    @readonly

    Contains the raw, compressed and encrypted bytecode of the script.

    :::warning Readonly Validity
        This property may be safe to read/write on certain conditions.
    :::
]=]
lscontainer.RawBytecode = ""

--[=[
    @prop BytecodeAvailable bool
    @within LuaSourceContainer
    @readonly

    Whether the script contains luau bytecode.
]=]
lscontainer.BytecodeAvailable = ""