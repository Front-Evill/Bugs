local function chat(txt)
  local ischat = game:GetService("TextChatService").ChatVersion == Enum.ChatVirsion.LegacyChatService
  if not ischat then 
    game:GetService("TextChatService").TextChannels.RBXGenerale:SendAsync(tostring(txt))
  elseif
    game:GetService("ReplicatedStorage").DefaultChatSystemEvents.SayMessageRequest:FireServer(tostring(txt), "All")
  end
end
