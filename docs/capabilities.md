# Capabilities

eUNC divides its features on 'Capabilities'. These allow script programmers and users to make assumptions and guarantees when using eUNC compliant products. Capabilities detail the **capability** that the tool has of excersising some functionality.

There are 'default' capabilities, which are expected for base compliance of eUNC.

| Capability Name                        | Description                                                                                                    | Bit  | Requires Authorization | Required for Base Compliance |
|----------------------------------------|----------------------------------------------------------------------------------------------------------------|------|------------------------|------------------------------|
| Physics                                | Physics related operations, such as `Raycasting`, `Boxcasting` and `Spherecasting` are implemented.            |  0   | No                     | No                           |
| Drawing (Primitives)                   | Drawing operations with primitives are supported, complex shapes and other kinds may not be implemented.       |  1   | No                     | Yes                          |
| Drawing                                | Drawing operations with shapes like boxes and spheres are supported and accelerated in C++.                    |  2   | No                     | No                           |
| Yielding (Basic, Luau VM)               | The Luau VM supports basic yielding operations, such as the `task` library. This version of the capability does not guarantee all functions in the environment can yield as needed |  3   | No                      | Yes                          |
| Yielding (Luau VM)                     | The Luau VM supports all yielding operations, including the `task` library. When this capability is present, functions implemented in the standard which require yielding **must** yield properly. |  4   | No                      | No                           |
| Character System                       | The tool provides an internal C++ drawing system, which works automatically given the character information from Luau, defined in spec. |  5  | No                      | No                           |
| Settings                               | The tool provides a simplified settings system according to spec                                               |  6   | No                     | No                           |
| Explorer                               | The tool provides an explorer which meets the minimum requirements according to the spec                       |  7   | No                     | No                           |
| Memory                                 | The tool allows to read and modify memory from the ROBLOX process given an address.                            |  8   | Yes                    | No                           |
| Roblox Web API                         | The tool allows the interaction with raw ROBLOX REST endpoints.                                                |  9   | Yes                    | No                           |
| Instances (Read)                       | The tool is capable of reading fields from ROBLOX instances.                                                   |  10   | No                     | Yes                          |
| Structures (Luau VM)                   | The tool's Luau VM is capable of supporting basic structures such as CFrames, Vector3, Vector2, and others.    |  11  | No                     | Yes                          |

Some of these capabilities, such as the **Memory** or **Roblox Web API** capability, can put the account, game or the data of the user at risk.

With this concern, eUNC comes packaged with a permissions system. If a script wishes to attain access to the memory, roblox web api or any library we deem 'risky', they must first **request** the capability for usage from the user.

The user can decline or accept the petition for permission, after which all threads created from the now 'authorized' thread, can access the capability without any further question.
