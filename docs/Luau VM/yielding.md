# Yielding

Unlike other tools, RbxCli contains numerous APIs which yield. These APIs will be marked yieldable. This is important, as some Luau functionality isn't compatible with yielding functions (Such as metamethods, as attempting to yield inside of one except for `__namecall` results in an error).

These APIs which yield will be marked, and if needed, can be avoided.
