local chatBox = peripheral.find("chatBox") -- Chatbox define
ws = http.websocket("ws://localhost:8356") -- Defines AxelChat's WS server | CHANGE THIS FOR YOUR NEEDS!
while true do -- Loop
 local wsmsg = ws.receive() -- Read from WS
 local msg = tostring(wsmsg) -- Stringify
 chatBox.sendMessage(msg) -- chat
end
