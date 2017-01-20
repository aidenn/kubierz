-- basic data for all entities

entity = {}

entity.height = 16
entity.width = 16
entity.reduceFilter = "linear"
entity.enlargeFilter = "nearest"
entity.x = 0
entity.y = 0
entity.vx = 0
entity.vy = 0
entity.r = 0
entity.speed = 0

-- let the meek inherit the earth!

function entity:new(o)
    setmetatable(o, self)
    self.__index = self
    return o
end