helpers = require 'helpers'

exports.moneyIn = (money) -> Math.floor(Number(money) * 1e8)

exports.moneyOut = (satoshi) -> 
    satoshi = helpers.pad satoshi, 9, '0'
    decimal_place = satoshi.length - 8
    bitcoin_string = satoshi.slice(0,decimal_place).concat('.').concat(satoshi.slice(decimal_place, satoshi.length))
    
    helpers.antipad(bitcoin_string, '0')

