# Security

Some APIs present within the eUNC standard are considered **high risk**, as they provide script programmers the chance to change, read or make potentially risky actions with user data.

APIs deemed such have an extra step to allow their usage, they must first go through with a light authorization procedure from the user. If the user does not allow the protection to be used, then the library will simply error on usage.

eUNC allows the tool to implement this security mechanism as they see fit, however, we recommend you make usage of the `userdata` field on `lua_State *` objects, and setting a custom structure there with information regarding the thread's permissions and authorizations, this can be implemented as simple as an `int32_t` bit flag with each flag pertaining to each capability. If the capability is set, then the thread is allowed to run the code, else, it will error. The spec also remarks that threads that are authorized, will have threads that are created from it authorized as well.
