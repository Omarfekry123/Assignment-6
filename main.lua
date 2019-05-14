--Background

display.setDefault ( "background", 53/255,141/255,56/255)





--Text 

local enterText = display.newText( "Enter A Number:", 160, 240, native.systemFont, 25)

enterText:setFillColor( 255/255, 255/255, 255/255 )

enterText.x = 160

enterText.y = 150



local answerText = display.newText( " Answer :", 160, 240, native.systemFont, 25)

answerText:setFillColor( 255/255, 255/255, 255/255 )

answerText.x = 160

answerText.y = 275





--Enter Text

numberTextField = native.newTextField( 160, 150 + 65, 225, 40 )

numberTextField.id = "number Textfield"





--Calculate Button

local calculateButton = display.newImageRect( "assets/images/calculate.png", 160, 100 )

calculateButton.x = 150

calculateButton.y = 400

calculateButton.id = "calculate button"





--Cosmetics 

local piSymbol = display.newImageRect( "assets/images/pi.png", 100, 100 )

piSymbol.x = 160

piSymbol.y = 20


function round( num, numDecimalPlaces )
	local mult = 10^(numDecimalPlaces or 3)
	return math.floor(num * mult + 0.5) / mult
	-- body
end



--Calculate Function

local function calculateButtonTouch ( event )



local itt

local logic

local answer



answer = 0

itt = tonumber(numberTextField.text)

--itt short for ittereations 

logic = -1



--Loops the itterations

for math = 1, itt, 1 do

	logic = logic*-1

	answer = round (answer + 4/(2*math-1)*logic, itt)

	answerText.text = ("Answer: "..answer)



end 


end



--Event listeners

calculateButton:addEventListener( "touch", calculateButtonTouch )