--[=[
    Contains functions that are present in the top level (or global) scope of the Luau VM.
    @class global
    @tag Library
]=]
local global = {}

--[=[
    @prop game DataModel
    @within global
    @readonly

    A reference to the active Roblox DataModel.
]=]
global.DataModel = nil

--[=[
    @prop workspace Workspace
    @within global
    @readonly

    A reference to the active Roblox Workspace.
]=]
global.Workspace = nil

--[=[
    Prints the given arguments to the RbxCli logger with an info level.
    Each argument is converted to a string and separated by tabs.
    
    @param ... any -- The values to print.
    @within global
]=]
function global.print(...) end

--[=[
    Prints the given arguments to the RbxCli logger with a warning level.
    Each argument is converted to a string and separated by tabs.
    
    @param ... any -- The values to warn.
    @within global
]=]
function global.warn(...) end

--[=[
    Performs an HTTP request
    
    ### Request Options
    | Field | Type | Description |
    | :--- | :--- | :--- |
    | `Url` | string | The target URL for the request. |
    | `Method` | string? | The HTTP method (GET, POST, PUT, PATCH, DELETE). Defaults to GET. |
    | `Headers` | table? | A dictionary of string keys and values for HTTP headers. |
    | `Cookies` | table? | A dictionary of string keys and values for Cookies. |
    | `Body` | string? | The request body (payload). |

    ### Response Structure
    | Field | Type | Description |
    | :--- | :--- | :--- |
    | `Success` | boolean | True if the status code is not an error (and not 0). |
    | `StatusCode` | number | The HTTP status code returned. |
    | `StatusMessage` | string | The status message (e.g., "200 OK"). |
    | `Body` | string | The response body. |
    | `Headers` | table | A dictionary of response headers. |
    | `Cookies` | table | A dictionary of response cookies (excluding .ROBLOSECURITY). |

    @param options table -- A table containing request details.
    @return table -- The response information.
    @yields
    @within global
]=]
function global.request(options) end

return global
