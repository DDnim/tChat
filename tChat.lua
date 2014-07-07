local dheight
local function tChat(self,button)
   local i = ChatFrame1:GetScale()
   local j,k = ChatFrame1:GetSize()
   
   if button == "LeftButton" then
      if k < 800 then
         ChatFrame1:SetSize(j,k+14 * 10)
      end
   elseif button == "RightButton" then
      ChatFrame1:SetSize(j,dheight)
   end
end

for _ = 1, NUM_CHAT_WINDOWS do
   local tChatMask = CreateFrame( "Button", nil, _G["ChatFrame".._]);
   tChatMask:SetFrameStrata("DIALOG")
   tChatMask:SetAllPoints(_G["ChatFrame".._]);
   dheight = _G["ChatFrame".._]:GetHeight()
   tChatMask:SetScript("OnMouseDown",tChat)
end
tChatMask:EnableMouse(false)