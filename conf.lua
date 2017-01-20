function love.conf(t)
    t.window.width = 640
    t.window.height = 480
    t.title = "Kubierz"
    t.author = "Aleksander Gielnicki"
    t.console = false
    t.window.vsync = false
end

-- basic data for the game

base = {}
base.spriteScale = 2
base.screenScale = love.graphics.getHeight()/480