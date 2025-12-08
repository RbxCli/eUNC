# Introduction

RbxCli is an external tool for the ROBLOX engine meant to modify and gain an advantage while in gameplay as well as to perform analysis on several games, their structures and other ways they achieve effects, gameplay or mechanics.

RbxCli contains a Luau VM, the VM itself holds a heavy resemblance and familiarity to the Roblox Luau API, however there are numerous differences, in between these are the following.

- No Events Framework
    RbxCli's method of working does not allow for any events to occur unless they are fired explicitly from within RbxCli. There are no Roblox related events, such as `.ChildAdded`, `.DescendantAdded`, .... This is due to the method RbxCLi operates, which would make performing these events slower and non-benefitial.

- Modified/Dissimilar behaviour
    RbxCli's Luau API, while holding resemblance to the original Roblox Luau API, however, the behaviour between both APIs is not guaranteed to be the same. These differences will be laid out on the documentations of the API if they could amount to a hit on performance, usability or other details..

---

Any other tool can adapt the APIs RbxCli has defined, however we will not make any compromises to support such.

RbxCli's API is designed to not change in order to maintain as much compatibility as possible with scripts, every aspect of it has been designed with this in mind, once an API is marked public and published it will __not__ be removed, only deprecated.
