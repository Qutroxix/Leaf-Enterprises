-- Leaf Enterprises Bot Script for Sword Fight on the Heights Games
-- Made by Leafcorp 🍃

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")

local LeafOwner = "RockfellerWaifu" -- Main Leaf Bot Owner
local WHITE_LISTED_V1 = {}
local WHITE_LISTED_V2 = {}

-- Helper function: Send a chat message in the player's head
local function SendChatMessage(player, message)
    if player and player.Character and player.Character:FindFirstChild("Head") then
        local chatPart = player.Character.Head
        local billboardGui = Instance.new("BillboardGui", chatPart)
        billboardGui.Size = UDim2.new(0, 200, 0, 50)
        billboardGui.Adornee = chatPart
        billboardGui.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel", billboardGui)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.Text = message
        textLabel.TextScaled = true
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Leaf green
        game:GetService("Debris"):AddItem(billboardGui, 5) -- Auto remove after 5 seconds
    end
end

-- Debugging function
local function DebugLog(message)
    print("🍃 DEBUG: " .. message)
end

-- Handle invalid command response
local function HandleInvalidCommand(player)
    SendChatMessage(player, "🍃 Invalid Leaf command! Only whitelisted users can use commands. 🍃")
    SendChatMessage(player, "🍃 Say !HelpLeaf to learn how to get whitelisted. 🍃")
    DebugLog(player.Name .. " tried an invalid command.")
end

-- Provide whitelist info to the player
local function ProvideWhitelistInfo(player)
    SendChatMessage(player, "🍃 Leaf Bot Whitelist Information 🍃")
    SendChatMessage(player, "V1: Slower response, basic functionality. Easy to obtain.")
    SendChatMessage(player, "V2: Faster response, advanced features, includes quizzes.")
    SendChatMessage(player, "🍃 To get V1, say 'I Love Leaf I Want V1!!' in chat. 🍃")
    SendChatMessage(player, "🍃 To get V2, complete a quiz with three Leaf Science questions. 🍃")
    SendChatMessage(player, "🍃 When whitelisted, you'll gain access to exclusive commands! 🍃")
    DebugLog(player.Name .. " requested whitelist information.")
end

-- Enable invisibility
local function EnableInvisibility(player)
    local character = player.Character
    if character and character:FindFirstChild("ShadowSphere") then
        character:FindFirstChild("ShadowSphere"):Destroy()
        SendChatMessage(player, "🍃 Leaf Bot: Invisibility activated! 🍃")
    else
        SendChatMessage(player, "🍃 Leaf Bot: Unable to activate invisibility. 🍃")
    end
end

-- Enable forcefield
local function EnableForcefield(player)
    local character = player.Character
    if character and character:FindFirstChild("ShieldSphere") then
        character:FindFirstChild("ShieldSphere"):Destroy()
        SendChatMessage(player, "🍃 Leaf Bot: Forcefield activated! 🍃")
    else
        SendChatMessage(player, "🍃 Leaf Bot: Unable to activate forcefield. 🍃")
    end
end

-- Smoothly kill target logic with sword
local function KillTarget(player, targetName)
    local bot = Players:FindFirstChild(LeafOwner)
    if bot and bot.Character then
        local target = Players:FindFirstChild(targetName)
        if target and target.Character then
            local sword = bot.Character:FindFirstChildWhichIsA("Tool", true)
            if sword and sword:IsA("Tool") then
                sword:Activate()
                DebugLog("Killing target: " .. target.Name)
                local torso = target.Character:FindFirstChild("Torso") or target.Character:FindFirstChild("HumanoidRootPart")
                local botRoot = bot.Character:FindFirstChild("HumanoidRootPart")
                if torso and botRoot then
                    local tween = TweenService:Create(botRoot, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CFrame = torso.CFrame})
                    tween:Play()
                    tween.Completed:Connect(function()
                        repeat
                            sword:Activate()
                            task.wait(0.2)
                        until target.Character.Humanoid.Health <= 0
                        SendChatMessage(player, "🍃 Leaf Bot: Target " .. target.Name .. " has been eliminated! 🍃")
                    end)
                end
            else
                SendChatMessage(player, "🍃 Leaf Bot: No sword equipped to kill the target. 🍃")
            end
        else
            SendChatMessage(player, "🍃 Leaf Bot: Target player not found. 🍃")
        end
    end
end

-- Handle chat commands
local function HandleLeafCommands(player, message)
    local command, args = message:match("^(%S+)%s*(.*)$")

    -- Only allow commands for whitelisted users
    if not table.find(WHITE_LISTED_V1, player.Name) and not table.find(WHITE_LISTED_V2, player.Name) then
        if command == "!HelpLeaf" then
            ProvideWhitelistInfo(player)
        else
            HandleInvalidCommand(player)
        end
        return
    end

    -- Commands for whitelisted users
    if command == "!kleaf" then
        KillTarget(player, args)
    elseif command == "!leafinvisible" then
        EnableInvisibility(player)
    elseif command == "!leafforcefield" then
        EnableForcefield(player)
    elseif command == "!leafcredits" then
        SendChatMessage(player, "🍃 Leaf Bot made by Leafcorp! 🍃")
    else
        SendChatMessage(player, "🍃 Unknown Leaf command. Use !HelpLeaf for help. 🍃")
    end
end

-- Leaf V2 Quiz for whitelist
local function StartV2Quiz(player)
    SendChatMessage(player, "🍃 Leaf Bot: Welcome to the V2 Whitelist Quiz! You have 30 seconds to answer 3 questions.")
    local questions = {
        {"What is the color of the Leaf Bot?", "A) Red", "B) Blue", "C) Green", "D) Yellow", "C"},
        {"Who created Leaf Bot?", "A) Leafcorp", "B) Roblox", "C) Tixia", "D) John Doe", "A"},
        {"What is Leaf Bot's favorite fruit?", "A) Apple", "B) Banana", "C) Leafy Greens", "D) Grape", "C"}
    }

    local correctAnswers = 0
    local timer = 30

    -- Show the questions and countdown timer
    for i, question in ipairs(questions) do
        SendChatMessage(player, "🍃 Question " .. i .. ": " .. question[1])
        SendChatMessage(player, "🍃 A) " .. question[2])
        SendChatMessage(player, "🍃 B) " .. question[3])
        SendChatMessage(player, "🍃 C) " .. question[4])
        SendChatMessage(player, "🍃 D) " .. question[5])

        -- Wait for the player to answer
        local answered = false
        local startTime = tick()
        repeat
            if tick() - startTime >= timer then
                break
            end
            player.Chatted:Connect(function(answer)
                if answer:lower() == question[6]:lower() then
                    correctAnswers = correctAnswers + 1
                end
            end)
        until answered

        if correctAnswers >= 2 then
            SendChatMessage(player, "🍃 Leaf Bot: Quiz complete! You have been added to the V2 whitelist. 🍃")
            table.insert(WHITE_LISTED_V2, player.Name)
        else
            SendChatMessage(player, "🍃 Leaf Bot: Quiz failed. You have been added to the V1 whitelist. 🍃")
            table.insert(WHITE_LISTED_V1, player.Name)
        end
    end
end

-- Hook up player chatting event
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        local command, args = message:match("^(%S+)%s*(.*)$")

        -- Handle V1 and V2 whitelist selection
        if message == "I Love Leaf I Want V1!!" then
            table.insert(WHITE_LISTED_V1, player.Name)
            SendChatMessage(player, "🍃 Leaf Bot: You have been added to the V1 whitelist. 🍃")
        elseif message == "!V2Whitelist" then
            StartV2Quiz(player)
        else
            HandleLeafCommands(player, message)
        end
    end)
