# Yielding Compliancy

The Luau VM must support yielding in order to be eUNC compliant.

Most Luau VM implementations run on the main thread. If the tool were to lack the ability to perform asynchronous operations or yielding back to the tool's scheduler, the rendering of the tool itself could fall behind of schedule, resulting in FPS drops, laggy visuals and overall a poor user experience.

In order to have basic yielding compliancy we force the existance of the `task` library.

The task library must run and behave exactly like ROBLOX's `task` library. This is the way the user can hand control back to the tool's scheduler, allowing it to not stall the rendering if it is going to perform any sort of 'heavy' operation.
