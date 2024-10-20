local event, username, message, uuid, isHidden = os.pullEvent("chat")
ws = http.websocket("ws://localhost:5656") -- ws server
local wsmsg = print(username .. ": " .. message) -- eeee
local msg = tostring(wsmsg) -- stringify

ws.send(msg) -- send
ws.close()
