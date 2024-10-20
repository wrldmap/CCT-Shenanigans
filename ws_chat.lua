local event, username, message, uuid, isHidden = os.pullEvent("chat")
ws = http.websocket("ws://localhost:8080") -- ws server
local wsmsg = print(username .. ": " .. message) -- eeee
local msg = tostring(wsmsg) -- stringify

ws.send(msg) -- send
ws.close()
