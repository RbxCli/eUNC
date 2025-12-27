--!nolint
--!strict

--[=[
    Contains functions related explicitly to modifying Roblox memory.
    @class memory
    @tag Library
]=]
local memory = {}

--- @class ProcessReadResult
--- @tag Class
--- Defines the read result statuses for memory reading operations.
local ProcessReadResult = {
	PagedOut = 0, --- @field PagedOut number The memory region was outside of the process's Working Set.
	Successful = 1, --- @field Successful number The memory read was successful.
	Failed = 2, --- @field Failed number The memory read failed at the API level (Kernel/Win32).
}

--- @class ProcessWriteResult
--- @tag Class
--- Defines the write result statuses for memory writing operations.
local ProcessWriteResult = {}

--- @prop PagedOut number
--- @within ProcessWriteResult
--- @readonly
--- The memory region was outside of the process's Working Set.
ProcessWriteResult.PagedOut = 0

--- @prop Successful number
--- @within ProcessWriteResult
--- @readonly
--- The memory write was successful.
ProcessWriteResult.Successful = 1

--- @prop Failed number
--- @within ProcessWriteResult
--- @readonly
--- The memory write failed at the API level (Kernel/Win32).
ProcessWriteResult.Failed = 2

--- @prop PartialWrite number
--- @within ProcessWriteResult
--- @readonly
--- The memory write was only completed partially, not completely (Kernel/Win32).
ProcessWriteResult.PartialWrite = 3

type ProcessReadResult = { PagedOut: "0", Successful: "1", Failed: "2" }
type ProcessWriteResult = { PagedOut: "0", Successful: "1", Failed: "2", PartialWrite: "3" }

--[=[
    Return whether the Memory library access is enabled.
    @return boolean -- If true, the Memory library is enabled and can be used.
]=]
function memory.is_enabled(): boolean
	return false
end

--[=[
    Performs a memory read on the specified address with the given size.

    @param address number -- The remote address to read from.
    @param size number -- The size of the read.
    @return (number, buffer) -- A status code (ProcessReadResult) representing if the operation was successful, and a buffer representing the contents read.
]=]
function memory.read(address: number, size: number): (number, buffer)
	return 0, buffer.create(0)
end

--[=[
    Attempts to read an ASCII string from the specified address.

    @param address number -- The remote address to read from.
    @param isCxxString boolean -- Whether the string is a C++ style string, which has a complex structure instead of a simple null-terminated string.
    @param readCount number? -- An optional maximum number of bytes to read, if not specified, it will read until a null-terminator is found. Only used if the string is a C string.
    @param readExactly boolean -- If true, will read exactly readCount bytes, otherwise will stop at the first null-terminator found. Only used if the string is a C string.
    @return (number, string?) -- A status code (ProcessReadResult) representing if the operation was successful, and the string read, or nil if the read failed.
]=]
function memory.read_string(
	address: number,
	isCxxString: boolean,
	readCount: number?,
	readExactly: boolean
): (number, string?)
	return 0, nil
end

--[=[
    Reads a boolean value from the specified address.

    @param address number -- The remote address to read from.
    @return (number, boolean?) -- A status code (ProcessReadResult) and the boolean read.
]=]
function memory.readbool(address: number): (number, boolean?)
	return 0, false
end

--[=[
    Reads an unsigned 8-bit integer (byte) from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readu8(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads an unsigned 16-bit integer (short) from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readu16(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads an unsigned 32-bit integer (int) from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readu32(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a signed 8-bit integer from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readi8(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a signed 16-bit integer from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readi16(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a signed 32-bit integer from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readi32(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a 32-bit floating point number from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readf32(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a 64-bit floating point number (double) from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the value read.
]=]
function memory.readf64(address: number): (number, number?)
	return 0, 0
end

--[=[
    Reads a pointer value from the specified address.

    @param address number -- The remote address to read from.
    @return (number, number?) -- A status code (ProcessReadResult) and the pointer address read.
]=]
function memory.read_pointer(address: number): (number, number?)
	return 0, 0
end

--[=[
    Attempts to write to the specified address with the given buffer.

    @param address number -- The address to write to.
    @param buffer buffer -- The buffer containing the data to write.
    @return number -- A status code (ProcessWriteResult) representing if the write operation was successful.
]=]
function memory.write(address: number, buffer: buffer): number
	return 0
end

--[=[
    Writes a boolean value to the specified address.

    @param address number -- The address to write to.
    @param value boolean -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writebool(address: number, value: boolean): number
	return 0
end

--[=[
    Writes an unsigned 8-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writeu8(address: number, value: number): number
	return 0
end

--[=[
    Writes an unsigned 16-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writeu16(address: number, value: number): number
	return 0
end

--[=[
    Writes an unsigned 32-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writeu32(address: number, value: number): number
	return 0
end

--[=[
    Writes a signed 8-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writei8(address: number, value: number): number
	return 0
end

--[=[
    Writes a signed 16-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writei16(address: number, value: number): number
	return 0
end

--[=[
    Writes a signed 32-bit integer to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writei32(address: number, value: number): number
	return 0
end

--[=[
    Writes a 32-bit floating point number to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writef32(address: number, value: number): number
	return 0
end

--[=[
    Writes a 64-bit floating point number to the specified address.

    @param address number -- The address to write to.
    @param value number -- The value to write.
    @return number -- A status code (ProcessWriteResult).
]=]
function memory.writef64(address: number, value: number): number
	return 0
end

--[=[
    Attempts to scan the process memory for the given signature.

    @param signature string -- The AOB signature in libhat format. (e.g: "48 ?? 33 ?? C3")
    @param startAddress number? -- An optional starting address to begin the scan from. If not provided, the scan will start from the beginning of the process memory.
    @param endAddress number? -- An optional ending address to stop the scan at. If not provided, the scan will go until the end of the process memory. This parameter is ignored if startAddress is not provided.
    @return (number, { number }?) -- A tuple containing first a status code (ProcessReadResult) representing if the operation was successful, and second containing the list of matches found.
]=]
function memory.scan_signature(
	signature: string,
	startAddress: number?,
	endAddress: number?
): (number, { number }?)
	return 0, {}
end

--[=[
    Scans for instances in memory given a vtable.

    @param vtableAddress number -- The address of the VTable the classes should look for.
    @return { number } -- An array of addresses of the instances whose first member is the VTable.
]=]
function memory.scan_instances(vtableAddress: number): { number }
	return {}
end

--[=[
    Scans the Roblox PE for a VTable given the mangled name.

    @param vtableName string -- The name of the vtable in MANGLED form.
    @return number? -- The pointer to the VTable address, may be nil if not found.
]=]
function memory.scan_vtable(vtableName: string): number?
	return nil
end

--[=[
    Validates if the given address is a valid remote pointer.

    @param address number -- The address to check.
    @return boolean -- True if the address is a valid pointer in the target process.
]=]
function memory.is_valid_address(address: number): boolean
	return false
end

--[=[
    Gets the base address of the main module of the target process.

    @return number -- The base address.
]=]
function memory.get_base_address(): number
	return 0
end

return memory