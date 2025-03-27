-- made by pineapple (https://github.com/pinn3apple)

local monitor = peripheral.find("monitor")
if not monitor then
    print("No monitor found!")
    return
end

monitor.setTextScale(1)  -- Adjust as needed
monitor.setBackgroundColor(colors.black)
monitor.clear()

local text = "Hi!"  
local colorsList = {
    colors.red, colors.orange, colors.yellow,
    colors.lime, colors.cyan, colors.blue,
    colors.purple
}

-- Function to get the width of text
local function getTextWidth(str)
    return #str
end

-- Function to get the center position
local function getCenteredPosition(monitor, text)
    local w, h = monitor.getSize()
    local textWidth = getTextWidth(text)
    local x = math.floor((w - textWidth) / 2) + 1
    local y = math.floor(h / 2) -- Center vertically
    return x, y
end

-- Get the centered position
local x, y = getCenteredPosition(monitor, text)

-- Display the rainbow text
for i = 1, #text do
    monitor.setTextColor(colorsList[(i - 1) % #colorsList + 1])
    monitor.setCursorPos(x + i - 1, y)
    monitor.write(text:sub(i, i))
end
