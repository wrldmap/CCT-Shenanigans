while true do
    local num = math.random(100)
    local win = 28
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
