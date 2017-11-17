-- Bad Words
-- filters.lua

function bad_words.chatText(id, text)
    local newText = text
    local count = 0

    if bad_words.setting.replace or bad_words.setting.punish then
        for bad, good in pairs(bad_words.list) do
            if bad_words.setting.replace then
                if bad_words.setting.replace_everything then
                    good = "****"
                end
                newText, replaced = bad_words.geesub(newText, bad, good)
                count = count + replaced
            end
        end

        if bad_words.setting.punish then
            if count > 0 then
                parse("slap "..id)
            end
        end
        if bad_words.setting.emoticon then
            if count > 0 then
                bad_words.player[id].cuss = true
            end
        end
    end

    return newText
end
addfilter("chatText", "bad_words.chatText")