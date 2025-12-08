--!strict

--[=[
    Contains methods and fields that are required by the standard in DataModel objects.

    This class inherits from the Instance class.
    
    @class DataModel
    @tag Instances
]=]
local dataModel = {}

--[=[
    @prop UniverseId number
    @within DataModel
    @readonly

    The unique identifier for this game in Roblox.
]=]
dataModel.UniverseId = ""

--[=[
    @prop GameId number
    @within DataModel
    @readonly

    The unique identifier for this game in Roblox.
]=]
dataModel.GameId = ""

--[=[
    @prop PlaceId number
    @within DataModel
    @readonly

    The unique identifier for this specific place within the game.
]=]
dataModel.PlaceId = ""

--[=[
    @prop Workspace Workspace?
    @within DataModel
    @readonly

    The Workspace instance of the DataModel, unaffected by renaming.
]=]
dataModel.Workspace = ""

--[=[
    @prop JobId string
    @within DataModel
    @readonly

    The GUID representing the instance the game is running on.
]=]
dataModel.JobId = ""

--[=[
    Attempts to retrieve a service based on its ClassName.

    @param serviceName string -- The name of the service to retrieve.
    @return Instance? -- The service instance, which may be nil if it does not exist
    @within DataModel

    :::info Locking
        This function will not create services unlike the Roblox version, it is akin to FindService.
    :::

    :::info Aliases
        This function has the following aliases:
            - FindService
            - service
            - findService
    :::
]=]
function dataModel:GetService(serviceName: string): Instance?
    return nil
end
