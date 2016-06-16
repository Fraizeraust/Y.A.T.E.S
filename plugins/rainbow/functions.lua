--[[
	This "plugin" was made as an example to show you how plugins work and how they can influence not only Y.A.T.E.S
	but certain parts of the script which can run with or without. This merely changes the result of what Y.A.T.E.S
	shows you when submitting a chat message.
]]

function yates.filter.chatColour(colour, prefix, usgn) -- Note how none of these variables are used for an actual purpose yet could be as shown by print()
	local r = math.random(0, 2) .. math.random(0, 5) .. math.random(0, 5)
	local g = math.random(0, 2) .. math.random(0, 5) .. math.random(0, 5)
	local b = math.random(0, 2) .. math.random(0, 5) .. math.random(0, 5)
	return "\169"..r..g..b
end