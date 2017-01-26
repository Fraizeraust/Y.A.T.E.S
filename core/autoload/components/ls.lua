function yates.func.ls(id, command)
    if not command or command == "" then
        msg2(id, lang("validation", 6, lang("global", 17)), "error")
        return
    end
    yates.func.executeLua(command)

    msg2(id, lang("ls", 3), "success")
end

function yates.func.executeLua(command)
    func = loadstring(command)
    func()
end