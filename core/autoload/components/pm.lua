function yates.func.pm(id, target, message)
    if not target then
        msg2(id, lang("validation", 6, lang("global", 3)), "error")
        return
    end

    if not player(target, "exists") then
        msg2(id, lang("validation", 3, lang("global", 2)), "error")
        return
    end
    target = tonumber(target)

    if not message or message == "" then
        msg2(id, lang("validation", 6, lang("global", 15)), "error")
        return
    end

    action("pm", id, target, message)

    msg2(id, "[->] ["..target.."] "..player(target, "name")..": "..message, "info", "[PM]: ")
    msg2(target, "[<-] ["..id.."] "..player(id, "name")..": "..message, "info", "[PM]: ")
end