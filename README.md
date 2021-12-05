# AR_Notif

FiveM Notify system

Usage:

(ClientSide):

All types:
success
info
warning
error

exports['AR_Notif']:TextNotif(GetCurrentResourceName(), 'Type', 'message', timeout)

-------------------------------------------------------------

(ServerSide):

All types:
success
info
warning
error

TriggerClientEvent('AR-Notif:SendNotification', source, GetCurrentResourceName(), type, "text", timeout ) 
