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

return eunc
