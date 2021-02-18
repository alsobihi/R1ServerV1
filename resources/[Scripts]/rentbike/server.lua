local cars = {"Bmx"}
RegisterCommand("rrentr", function()
    local car = (cars[math.random(#cars)])
    spawnCar(car)
    notify("~p~تم استئجار الدرجة بانجاح: ~y~~y~" .. car)
end)