--!strict

--[=[
    Contains functions related explicitly to standard compliance.
    @class eunc
    @tag Library
]=]
local eunc = {}

--[=[
    Retrieves the capability bits that the tooling supports.

    @return number -- A 32 bit integer contaning bit flags for each capability.

    :::info Capabilities
        The bits for the capabilities are marked and documented [here](/docs/capabilities)
    :::
]=]
function eunc.GetCapabilities(): number
    return 0
end

--[=[
    Attempts to request access to a specific capability from the user.

    @param capability number -- A 32 bit integer contaning the bit of the capability that needs authorization.
    @return boolean -- Whether the capability access was granted by the user.

    :::info Capabilities
        The bits for the capabilities are marked and documented [here](/docs/capabilities)
    :::
]=]
function eunc.RequestCapabilityAccess(capability: number): boolean
    return false
end

return eunc