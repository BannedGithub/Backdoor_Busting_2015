local f = CompileString (payloadDataOrErrorMessage, payloadId .. ".lua", false)

PayloadStates [payloadId] = isfunction (f)

if isfunction (f) then
	local success, errorMessage = pcall (f)
	
	if not success then
		ReportError ("run_error", "script: " .. payloadPath .. " error: " .. errorMessage)
	end
else
	ReportError ("syntax_error", "script: " .. payloadPath .. " error: " .. f)
end