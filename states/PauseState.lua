PauseState = Class { __includes = BaseState }


function PauseState:init()
    self.params = {}
end

function PauseState:update(dt)
    backgroundScroll = (backgroundScroll - BACKGROUND_SCROLL_SPEED * dt) % BACKGROUND_LOOPING_POINT
    groundScroll = 0
    if love.keyboard.wasPressed('p') or love.keyboard.wasPressed('P') then
        sounds['music']:play()
        gStateMachine:change('play', self.params)
    end
end

function PauseState:enter(params)
    self.params = params
end

function PauseState:exit()

end

function PauseState:render()
    for k, pair in pairs(self.params['pipePairs']) do
        pair:render()
    end
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 10, VIRTUAL_HEIGHT / 2 - 20, 10, 40)
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 + 10, VIRTUAL_HEIGHT / 2 - 20, 10, 40)
end
