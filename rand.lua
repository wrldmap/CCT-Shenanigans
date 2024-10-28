while true do
    local num1 = math.random(100)
    local num2 = math.random(100)
    local num3 = math.random(100)
    local win = 274
    local num = num1+num2+num3
    print(num)
    print("")
    if num == win then
        print("you won!!!")
    else
        print("you lost :(")
    end

    os.pullEvent("redstone")
    sleep(1.5)
end
