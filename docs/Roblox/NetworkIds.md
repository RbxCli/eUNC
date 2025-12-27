# RakNet IDs

RbxCli allows you to read the Network ID of objects such as parts. This ID is the 'who' on the "Who simulates this part?".

These values are not publicly defined, as they're relating to RakNet. Previously, one could have been able to know the Network IDs of other players, however this has been long removed, and the only communication you have is with the Server directly.

RbxCli distinguishes these parts on the explorer by their network id.

| Network ID | Owner | Happens When |
| :--- | :--- | :--- |
| **-1** | **Not Simulated** (No Owner) | Part is not parented to Workspace or Physics simulation is disabled |
| **1** | **Server** (Server) | The server owns this part and its responsable for its physics simulation. |
| **2** | **Welded/Anchored** (Server/You) | The part is welded to another, forming an assembly. It is not independantly simulated, and it is tied to the assembly's primary part. |
| **3** | **Remotely Simulated** (Server/Player) | The server or another player owns this part and its responsable for its physics simulation. |
| **4+** | **Local Player** (You) | You own this part and are responsable for its physics simulation, changes you do (Position, Size, ...) will replicate to other clients and the server. |
