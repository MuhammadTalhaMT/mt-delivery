ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('mt-delivery:Payout')
AddEventHandler('mt-delivery:Payout', function(salary)	
	local xPlayer = ESX.GetPlayerFromId(source)
	local Payout = salary
	
	xPlayer.addMoney(Payout)
end)