RegisterNetEvent("AR-Notif:SendNotification")
AddEventHandler("AR-Notif:SendNotification", function(file, type, text, timeout)
    if CheckIFTrue(file, type, text, timeout) then
        timeout = tonumber(timeout)
        SendNotification(type, text, timeout)
    end
end)

function TextNotif(file, type, text, timeout)
    if CheckIFTrue(file, type, text, timeout) then
        timeout = tonumber(timeout)
        SendNotification(type, text, timeout)
    end
end

RegisterCommand("test", function(source, args, raw)
    file = GetCurrentResourceName()
    type = args[1]
    text = args[2]
    timeout = args[3]
    if CheckIFTrue(file, type, text, timeout) then
        timeout = tonumber(timeout)
        SendNotification(type, text, timeout)
    end
end)

function SendNotification(Status, Text, Timeout)
    SendNUIMessage({status = Status, text = Text, timeout = Timeout})
end

function CheckIFTrue(file, type, text, timeout)
        if type == "success" or type == "info" or type == "warning" or type == "error" then
            if text ~= nil then
                if timeout ~= nil then
                    return true
                else
                    print("[ERROR] Invalid timeout. In file: "..file)
                end
            else
                print("[ERROR] Invalid text. In file: "..file)
            end
        else
            print("[ERROR] Invalid type: "..type.." In file: "..file)
        end
end
