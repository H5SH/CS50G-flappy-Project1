


PauseState = Class{__includes = BaseState}


function PauseState:init()
    self.score = 0
end

function PauseState:update(dt)
    if love.keyboard.wasPressed('p') or love.keyboard.wasPressed('P') then
        sounds['music']:play()
        gStateMachine:change('play', self.score)
    end

end

function PauseState:enter(params)
    self.score = params.score
end

function PauseState:exit()

end
                
function PauseState:render()
        love.graphics.rectangle('fill', VIRTUAL_WIDTH/2 - 10, VIRTUAL_HEIGHT/2 - 20, 10, 40)
        love.graphics.rectangle('fill', VIRTUAL_WIDTH/2 + 10, VIRTUAL_HEIGHT/2 - 20, 10, 40)
end