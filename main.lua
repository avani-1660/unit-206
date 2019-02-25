-----------------------------------------------------------------------------------------
--
-- how to calculate the area of a square
-- 
-----------------------------------------------------------------------------------------
display.setDefault( "background",255, 0, 0)


local aOftrapozoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 150, 25 )
aOftrapozoidTextField.id = "a textField"

local bOftrapozoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 150, 25 )
bOftrapozoidTextField.id = "b textField"

local heightOftrapozoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 150, 25 )
heightOftrapozoidTextField.id = "h textField"

local areaOftrapozoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 30 )
areaOftrapozoidTextField.id = "area textField"
areaOftrapozoidTextField:setFillColor( 1, 1, 1 )

 

local submitButton = display.newImageRect( "my assets/download.png", 200, 55 )
submitButton.x = 100
submitButton.y = 150
submitButton.id = "submit button"
 
local function submitButtontouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local aoftrapozoid
    local boftrapozoid
    local heightOftrapozoid
    local areaoftrapozoid

    aoftrapozoid = aOftrapozoidTextField.text
    boftrapozoid = bOftrapozoidTextField.text
    hOftrapozoid = heightOftrapozoidTextField.text
    areaoftrapozoid = ((aoftrapozoid+boftrapozoid)/2) *hOftrapozoid
    -- print( areaOfSquare )
    areaOftrapozoidTextField.text = "The area is " .. areaoftrapozoid

    return true
end

submitButton:addEventListener( "touch", submitButtontouch )