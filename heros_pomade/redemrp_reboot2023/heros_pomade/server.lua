data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent("RegisterUsableItem:pomade")
AddEventHandler("RegisterUsableItem:pomade", function(source)
	local _source = source
    local ItemData = data.getItem(_source, 'pomade')
	ItemData.RemoveItem(1)
    TriggerClientEvent("heros_pomade:TaskPomade",_source,"pomade")
end)