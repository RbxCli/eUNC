# Capabilities

eUNC is divided on 'Capabilities'. These provide the user with a feature set that the tool supports for running scripts, allowing them to not run a script if a capability is missing due to it being required.

Most of these relate to the availability of libraries and tool features, while others relate to Luau VM's capabilities.

| Capability Name                        | Description                                                                                                    | Bit | Requires Authorization |
|----------------------------------------|----------------------------------------------------------------------------------------------------------------|-----|------------------------|
| Physics                                | Physics related operations, such as `Raycasting`, `Boxcasting` and `Spherecasting` are implemented.            |  0  | No                     |
| Drawing (Primitives)                   | Drawing operations with primitives are supported, complex shapes and other kinds may not be implemented.       |  1  | No                     |
| Drawing                                | Drawing operations with shapes like boxes and spheres are supported and accelerated in C++.                    |  2  | No                     |
| Yielding (Luau VM)                     | The Luau VM supports yielding operations, including the `task` library. When this capability is present, functions implemented in the standard which require yielding **must** yield properly. |  3  | No                      |
| Character System                       | The tool provides an internal C++ drawing system, which works automatically given the character information from Luau, defined in spec. |  4  | No                      |
| Settings                               | The tool provides a simplified settings system according to spec                                               |  5  | No                     |
| Explorer                               | The tool provides an explorer which meets the minimum requirements according to the spec                       |  6  | No                     |
| Memory                                 | The tool allows to read and modify memory from the ROBLOX process given an address.                            |  7  | Yes                    |
| Roblox Web API                         | The tool allows the interaction with raw ROBLOX REST endpoints.                                                |  8  | Yes                    |

Some of these capabilities, such as the **Memory** or **Roblox Web API** capability, can put the account, game or the data of the user at risk (potentially impacting performance, game stability and even potentially allowing ROBLOSECURITY cookies to be grabbed!). 

Due to this, the user must **explicitly** allow them to be enabled via the `Authorization` system.

The authorization system is an extra call which requests, but does not guarantee the ability to use the specified capability in the current thread context. Threads spawned off from the thread which has this capability will inherit such capability.