require('mane')

function mane.load()
    local group = mane.display.game -- default group mane 2d

    mane.display.setBackGroundColor(50/255, 100/255, 175/255) -- set background color

    Coins = 0
    local button = group:newImage('images/coin.png', mane.display.centerX, mane.display.centerY, 0.2, 0.2)

    local coin_text = group:newPrint('Coins: '..Coins, 'Venus.ttf', button.x + 30, button.y - 100)
    coin_text.angle = 12.5

    button:addEvent('touch', function (e)
        if e.phase == 'began' then
            Coins = Coins + 1
            coin_text.text = 'Coins: '..Coins
        end
    end)
end