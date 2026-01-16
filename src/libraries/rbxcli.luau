--!strict

--[=[
    Represents a structure containing information about the product.

    @class ProductInformation
    @tag Class
]=]
local productInfo = {}

--[=[
    The name of the tool running the script.

    @prop name string
    @within ProductInformation
]=]
productInfo.name = ""

--[=[
    The build version of the product in the form of `major.minor.patch[letter]-[beta/alpha]`

    `[letter]` may be present if a hotfix or a minor update has been applied to the build, but was not sufficient to be considered a patch version.

    `[beta/alpha]` may not be present if the build is considered a stable, released build. 

    @prop build string
    @within ProductInformation
]=]
productInfo.version = ""

--[=[
    The date of the build that this product version was built in the form of `DD-MM-YYYY`

    @prop build string
    @within ProductInformation
]=]
productInfo.build = ""

--[=[
    The Roblox version that this product is built for in the form of `version-{{HASH}}`

    @prop built_for_roblox_version string
    @within ProductInformation
]=]
productInfo.built_for_roblox_version = ""

--[=[
    Contains functions related to miscellaneous and/or general interactions with RbxCli.

    @class rbxcli
    @tag Library
]=]
local eunc = {}

type ProductInformation = {
	name: string,
	version: string,
	build: string,
	built_for_roblox_version: string,
}

--[=[
    Obtains information about the version of the product that runs the script.

    @return ProductInformation -- A table containing information about the product running the script.
    @within rbxcli
]=]
function eunc.get_product_information(): ProductInformation
	return {
		name = "eUNC",
		version = "0.12.0",
		build = "15-06-2024",
		built_for_roblox_version = "1.0.0",
	}
end

--[=[
    Displays a notification using the built-in User Interface and it's notification system.

    @param content string -- The content of the notification.
    @param timeInSeconds number -- The amount of time in seconds the notification should be displayed for. Defaults to 5 seconds. Must be greater than 0.
    @within rbxcli
]=]
function eunc.display_notification(content: string, timeInSeconds: number?): () end

--[=[
    Attempts to teleport the local player to the given position in the world.

    @param pos Vector3 -- The position to teleport the local player to, in global space.
    @within rbxcli
    @yields
]=]
function eunc.teleport_local_player(pos: Vector3): () end

--[=[
    Attempts to fire the .Touched event between two parts.

    @param part0 BasePart -- The first part involved in the touch interaction.
    @param part1 BasePart -- The second part involved in the touch interaction.
    @param touchType number -- The type of touch interaction. 0 for Touch, 1 for Untouch.
    @param replicate boolean? -- Whether or not to replicate the touch event to the server, defaults to true.

    @error "touch must be either 0 (Touch) or 1 (Untouch)" -- touchType is not 0 or 1.
    @error "neither of the parts to be 'touched' are owned. The event would not be fired, firing is unavailable." -- Neither part is owned by the local player, firing the event would have no effect.
    @error "object was freed." -- One of the parts has been removed from the game.
    @error "instance to fire may be type confused, firing is unavailable" -- One of the parts may be re-used heap memory, attempting to fire the event is unsafe and has been blocked.
    @error "instance to fire is not a BasePart, firing is unavailable." -- One of the parts does not inherit from the BasePart class.
    @error "instance to fire is not touchable, firing is unavailable." -- One of the parts has CanTouch set to false, .Touched would not be fireable.
    @error "instance contains no physics object, firing is unavailable." -- One of the parts contains an invalid 'Primitive' object. Firing the event is unsafe and has been blocked.

    ### Warning

    This feature depends on 'Hybrid mode' being enabled, with it disabled, the function will be unavailable.

    @within rbxcli
]=]
function eunc.firetouchinterest(part0: BasePart, part1: BasePart, touchType: number, replicate: boolean?): () end

--[=[
    Attempts to fire the .Triggered event of the provided ProximityPrompt.

    @param orompt ProximityPrompt -- The prompt to fire.

    @error "object was freed." -- The object has been removed from the game.
    @error "instance to fire may be type confused, firing is unavailable" -- The object may be re-used heap memory, attempting to fire the event is unsafe and has been blocked.
    @error "instance to fire is not a ProximityPrompt, firing is unavailable." --  The provided instance is not a ProximityPrompt.

    ### Warning
    This feature depends on 'Hybrid mode' being enabled, with it disabled, the function will be unavailable.

    ### Information
    This function provides no way to simulate the hold duration of a ProximityPrompt, it will always trigger the prompt as if it were tapped and if the duration was 0. This can be detected by fancier anticheat systems, as the necessary events that go before and/or after the `.Triggered` event, such as `.PromptButtonHoldBegan`, `.PromptButtonHoldEnded` or `.TriggerEnded` would not be fired appropriately.

    Due to this, use this function with caution when dealing with fancier anticheats.

    @within rbxcli
]=]
function eunc.fireproximityprompt(orompt: ProximityPrompt): () end

return eunc
