local OutputLog = {}
OutputLog.__index = OutputLog

local RunService = game:GetService("RunService")
local DEFAULT_TEMPLATE = "[%s] "

--// Private Functions \\--

local function EnvironmentCheck()
	if RunService:IsClient() then
		return "Client"
	end
	return "Server"
end

local function SetupNewOuput(self,text)
	if not text or not self then return error("Print Failed",3) end
	return string.upper(string.sub(text,1,1))..string.lower(string.sub(text,2))
end

--// Public Functions \\--

function OutputLog.new(CustomName,template)
	local self = {}
	
	local locationTag = CustomName or getfenv(2).script.Name
	self.prefix = string.format(template or DEFAULT_TEMPLATE,locationTag.." "..EnvironmentCheck())
	
	setmetatable(self,OutputLog)
	return self:Print(),self:Warn()
end

function OutputLog:Print()
	return function(text)
		print(self.prefix,SetupNewOuput(self,text))
	end
end

function OutputLog:Warn()
	return function(text)
		warn(self.prefix,SetupNewOuput(self,text))
	end
end

return OutputLog
