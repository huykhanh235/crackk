-- ================================================
--   KH KEY SYSTEM + SCRIPT LOADER
--   Made by KhanhHuy & Khang | v2.1 - Redesigned
--   Key: khanhhuyandkhang
-- ================================================

local VALID_KEY = "khanhhuyandkhang"
local SCRIPT_URL = "https://raw.githubusercontent.com/ahuy7867/ahuy7896/refs/heads/main/main"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Colors = {
    BG      = Color3.fromRGB(15, 12, 28),
    Panel   = Color3.fromRGB(25, 20, 45),
    Accent1 = Color3.fromRGB(140, 55, 245),
    Accent2 = Color3.fromRGB(245, 75, 155),
    Text    = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(190, 170, 225),
    Input   = Color3.fromRGB(32, 27, 55),
    Success = Color3.fromRGB(65, 230, 130),
    Error   = Color3.fromRGB(255, 65, 85),
    Gold    = Color3.fromRGB(255, 215, 80),
}

--  GUI ROOT 
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name           = "KHKeySystem"
ScreenGui.ResetOnSpawn   = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent         = game:GetService("CoreGui")

local Blur = Instance.new("BlurEffect")
Blur.Size   = 20
Blur.Parent = game:GetService("Lighting")

local Overlay = Instance.new("Frame")
Overlay.Size                   = UDim2.new(1,0,1,0)
Overlay.BackgroundColor3       = Color3.fromRGB(0,0,0)
Overlay.BackgroundTransparency = 0.6
Overlay.BorderSizePixel        = 0
Overlay.ZIndex                 = 1
Overlay.Parent                 = ScreenGui

--  MAIN CARD (smaller & more elegant) 
local Card = Instance.new("Frame")
Card.Size             = UDim2.new(0, 360, 0, 280)  -- Smaller
Card.Position         = UDim2.new(0.5, -180, 0.5, -140)
Card.BackgroundColor3 = Colors.BG
Card.BorderSizePixel  = 0
Card.ZIndex           = 2
Card.Parent           = ScreenGui
Instance.new("UICorner", Card).CornerRadius = UDim.new(0, 24)

-- Modern borders
local BorderOuter = Instance.new("Frame")
BorderOuter.Size             = UDim2.new(1,6,1,6)
BorderOuter.Position         = UDim2.new(0,-3,0,-3)
BorderOuter.BackgroundColor3 = Colors.Accent1
BorderOuter.BorderSizePixel  = 0
BorderOuter.ZIndex           = 1
BorderOuter.Parent           = Card
Instance.new("UICorner", BorderOuter).CornerRadius = UDim.new(0, 26)

local BorderOuter2 = Instance.new("Frame")
BorderOuter2.Size                   = UDim2.new(1,6,1,6)
BorderOuter2.Position               = UDim2.new(0,-3,0,-3)
BorderOuter2.BackgroundColor3       = Colors.Accent2
BorderOuter2.BackgroundTransparency = 0.65
BorderOuter2.BorderSizePixel        = 0
BorderOuter2.ZIndex                 = 1
BorderOuter2.Parent                 = Card
Instance.new("UICorner", BorderOuter2).CornerRadius = UDim.new(0, 26)

--  HEADER 
local Header = Instance.new("Frame")
Header.Size             = UDim2.new(1,0,0,78)
Header.BackgroundColor3 = Colors.Panel
Header.BorderSizePixel  = 0
Header.ZIndex           = 3
Header.Parent           = Card
Instance.new("UICorner", Header).CornerRadius = UDim.new(0, 24)

local HFix = Instance.new("Frame")
HFix.Size             = UDim2.new(1,0,0,20)
HFix.Position         = UDim2.new(0,0,1,-20)
HFix.BackgroundColor3 = Colors.Panel
HFix.BorderSizePixel  = 0
HFix.ZIndex           = 3
HFix.Parent           = Header

local AccentLine = Instance.new("Frame")
AccentLine.Size             = UDim2.new(1,0,0,3)
AccentLine.Position         = UDim2.new(0,0,1,-3)
AccentLine.BackgroundColor3 = Colors.Accent1
AccentLine.BorderSizePixel  = 0
AccentLine.ZIndex           = 4
AccentLine.Parent           = Header

-- Logo
local LogoCircle = Instance.new("Frame")
LogoCircle.Size             = UDim2.new(0,54,0,54)
LogoCircle.Position         = UDim2.new(0,18,0.5,-27)
LogoCircle.BackgroundColor3 = Colors.Accent1
LogoCircle.BorderSizePixel  = 0
LogoCircle.ZIndex           = 5
LogoCircle.Parent           = Header
Instance.new("UICorner", LogoCircle).CornerRadius = UDim.new(1,0)

local LogoBorder = Instance.new("UIStroke")
LogoBorder.Color     = Colors.Accent2
LogoBorder.Thickness = 3
LogoBorder.Parent    = LogoCircle

local AvatarImg = Instance.new("ImageLabel")
AvatarImg.Size                   = UDim2.new(1,0,1,0)
AvatarImg.BackgroundTransparency = 1
AvatarImg.Image                  = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=150&height=150&format=png"
AvatarImg.ZIndex                 = 6
AvatarImg.Parent                 = LogoCircle
Instance.new("UICorner", AvatarImg).CornerRadius = UDim.new(1,0)

local ScriptTitle = Instance.new("TextLabel")
ScriptTitle.Size                   = UDim2.new(1,-110,0,26)
ScriptTitle.Position               = UDim2.new(0,85,0,12)
ScriptTitle.BackgroundTransparency = 1
ScriptTitle.Text                   = "KH Script"
ScriptTitle.TextColor3             = Colors.Text
ScriptTitle.TextSize               = 22
ScriptTitle.Font                   = Enum.Font.GothamBold
ScriptTitle.TextXAlignment         = Enum.TextXAlignment.Left
ScriptTitle.ZIndex                 = 5
ScriptTitle.Parent                 = Header

local Badge = Instance.new("Frame")
Badge.Size             = UDim2.new(0,68,0,19)
Badge.Position         = UDim2.new(0,85,0,42)
Badge.BackgroundColor3 = Colors.Accent2
Badge.BorderSizePixel  = 0
Badge.ZIndex           = 5
Badge.Parent           = Header
Instance.new("UICorner", Badge).CornerRadius = UDim.new(0,8)

local BadgeText = Instance.new("TextLabel")
BadgeText.Size                   = UDim2.new(1,0,1,0)
BadgeText.BackgroundTransparency = 1
BadgeText.Text                   = " PRIVATE"
BadgeText.TextColor3             = Colors.Text
BadgeText.TextSize               = 10.5
BadgeText.Font                   = Enum.Font.GothamBold
BadgeText.ZIndex                 = 6
BadgeText.Parent                 = Badge

local VerTag = Instance.new("TextLabel")
VerTag.Size                   = UDim2.new(0,55,0,18)
VerTag.Position               = UDim2.new(1,-68,0,14)
VerTag.BackgroundTransparency = 1
VerTag.Text                   = "v2.1"
VerTag.TextColor3             = Colors.Gold
VerTag.TextSize               = 13
VerTag.Font                   = Enum.Font.GothamBold
VerTag.TextXAlignment         = Enum.TextXAlignment.Right
VerTag.ZIndex                 = 5
VerTag.Parent                 = Header

--  BODY 
local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size                   = UDim2.new(1,-40,0,17)
KeyLabel.Position               = UDim2.new(0,20,0,92)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text                   = " Nhp key ca bn"
KeyLabel.TextColor3             = Colors.SubText
KeyLabel.TextSize               = 13
KeyLabel.Font                   = Enum.Font.GothamBold
KeyLabel.TextXAlignment         = Enum.TextXAlignment.Left
KeyLabel.ZIndex                 = 3
KeyLabel.Parent                 = Card

local InputFrame = Instance.new("Frame")
InputFrame.Size             = UDim2.new(1,-40,0,46)
InputFrame.Position         = UDim2.new(0,20,0,112)
InputFrame.BackgroundColor3 = Colors.Input
InputFrame.BorderSizePixel  = 0
InputFrame.ZIndex           = 3
InputFrame.Parent           = Card
Instance.new("UICorner", InputFrame).CornerRadius = UDim.new(0,14)

local InputStroke = Instance.new("UIStroke")
InputStroke.Color        = Colors.Accent1
InputStroke.Thickness    = 1.8
InputStroke.Transparency = 0.4
InputStroke.Parent       = InputFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size                   = UDim2.new(1,-20,1,0)
KeyInput.Position               = UDim2.new(0,10,0,0)
KeyInput.BackgroundTransparency = 1
KeyInput.PlaceholderText        = "Dán key vào ây..."
KeyInput.PlaceholderColor3      = Colors.SubText
KeyInput.TextColor3             = Colors.Text
KeyInput.TextSize               = 15
KeyInput.Font                   = Enum.Font.Gotham
KeyInput.ClearTextOnFocus       = false
KeyInput.ZIndex                 = 4
KeyInput.Parent                 = InputFrame

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size                   = UDim2.new(1,-40,0,17)
StatusLabel.Position               = UDim2.new(0,20,0,165)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text                   = ""
StatusLabel.TextColor3             = Colors.SubText
StatusLabel.TextSize               = 12.5
StatusLabel.Font                   = Enum.Font.Gotham
StatusLabel.TextXAlignment         = Enum.TextXAlignment.Left
StatusLabel.ZIndex                 = 3
StatusLabel.Parent                 = Card

local UnlockBtn = Instance.new("TextButton")
UnlockBtn.Size             = UDim2.new(1,-40,0,46)
UnlockBtn.Position         = UDim2.new(0,20,0,188)
UnlockBtn.BackgroundColor3 = Colors.Accent1
UnlockBtn.BorderSizePixel  = 0
UnlockBtn.Text             = " Unlock Script"
UnlockBtn.TextColor3       = Colors.Text
UnlockBtn.TextSize         = 15.5
UnlockBtn.Font             = Enum.Font.GothamBold
UnlockBtn.ZIndex           = 3
UnlockBtn.Parent           = Card
Instance.new("UICorner", UnlockBtn).CornerRadius = UDim.new(0,14)

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Color        = Colors.Accent2
BtnStroke.Thickness    = 1.8
BtnStroke.Transparency = 0.45
BtnStroke.Parent       = UnlockBtn

local Footer = Instance.new("TextLabel")
Footer.Size                   = UDim2.new(1,0,0,20)
Footer.Position               = UDim2.new(0,0,1,-24)
Footer.BackgroundTransparency = 1
Footer.Text                   = "Made by KhanhHuy & Khang  •  v2.1"
Footer.TextColor3             = Colors.SubText
Footer.TextSize               = 10.5
Footer.Font                   = Enum.Font.Gotham
Footer.ZIndex                 = 3
Footer.Parent                 = Card

--  LOGIC 
UnlockBtn.MouseEnter:Connect(function()
    UnlockBtn.BackgroundColor3 = Colors.Accent2
    UnlockBtn.Size = UDim2.new(1,-38,0,48)  -- subtle hover scale
end)
UnlockBtn.MouseLeave:Connect(function()
    UnlockBtn.BackgroundColor3 = Colors.Accent1
    UnlockBtn.Size = UDim2.new(1,-40,0,46)
end)

local function closeGUI()
    Blur:Destroy()
    ScreenGui:Destroy()
end

local function runMainScript()
    closeGUI()
    local ok, result = pcall(function()
        return game:HttpGet(SCRIPT_URL)
    end)
    if ok and result then
        local fn, err = loadstring(result)
        if fn then
            fn()
        else
            warn("[KH Script] Loi loadstring: " .. tostring(err))
        end
    else
        warn("[KH Script] Khong tai duoc script: " .. tostring(result))
    end
end

local function shakeCard()
    local orig = Card.Position
    for i = 1, 5 do
        Card.Position = UDim2.new(0.5, -180 + (i % 2 == 0 and 6 or -6), 0.5, -140)
        task.wait(0.035)
    end
    Card.Position = orig
end

local function checkKey()
    local input = KeyInput.Text:gsub("%s+", "")

    if input == "" then
        StatusLabel.Text       = " Vui lòng nhp key!"
        StatusLabel.TextColor3 = Colors.Error
        return
    end

    if input == VALID_KEY then
        StatusLabel.Text           = " Key hp l! ang ti..."
        StatusLabel.TextColor3     = Colors.Success
        InputStroke.Color          = Colors.Success
        UnlockBtn.BackgroundColor3 = Colors.Success
        UnlockBtn.Text             = " Verified!"
        task.wait(1)
        runMainScript()
    else
        StatusLabel.Text       = " Key không úng! Th li."
        StatusLabel.TextColor3 = Colors.Error
        InputStroke.Color      = Colors.Error
        KeyInput.Text          = ""
        shakeCard()
        task.wait(1.4)
        InputStroke.Color        = Colors.Accent1
        InputStroke.Transparency = 0.4
        StatusLabel.Text         = ""
    end
end

UnlockBtn.MouseButton1Click:Connect(checkKey)

KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then checkKey() end
end)