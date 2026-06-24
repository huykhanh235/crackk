-- ================================================
--   KH KEY SYSTEM + SCRIPT LOADER
--   Made by KhanhHuy & Khang | v2.0
--   Key: khanhhuyandkhang
-- ================================================

local VALID_KEY = "khanhhuyandkhang"
local SCRIPT_URL = "https://raw.githubusercontent.com/ahuy7867/ahuy7896/refs/heads/main/main"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Colors = {
    BG      = Color3.fromRGB(12, 10, 22),
    Panel   = Color3.fromRGB(20, 16, 38),
    Accent1 = Color3.fromRGB(155, 60, 255),
    Accent2 = Color3.fromRGB(255, 80, 160),
    Text    = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(180, 160, 210),
    Input   = Color3.fromRGB(35, 28, 60),
    Success = Color3.fromRGB(60, 220, 120),
    Error   = Color3.fromRGB(255, 70, 90),
    Gold    = Color3.fromRGB(255, 200, 60),
}

-- ── GUI ROOT ────────────────────────────────────
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name           = "KHKeySystem"
ScreenGui.ResetOnSpawn   = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent         = game:GetService("CoreGui")

local Blur = Instance.new("BlurEffect")
Blur.Size   = 24
Blur.Parent = game:GetService("Lighting")

local Overlay = Instance.new("Frame")
Overlay.Size                   = UDim2.new(1,0,1,0)
Overlay.BackgroundColor3       = Color3.fromRGB(0,0,0)
Overlay.BackgroundTransparency = 0.45
Overlay.BorderSizePixel        = 0
Overlay.ZIndex                 = 1
Overlay.Parent                 = ScreenGui

-- ── MAIN CARD ───────────────────────────────────
local Card = Instance.new("Frame")
Card.Size             = UDim2.new(0,420,0,340)
Card.Position         = UDim2.new(0.5,-210,0.5,-170)
Card.BackgroundColor3 = Colors.BG
Card.BorderSizePixel  = 0
Card.ZIndex           = 2
Card.Parent           = ScreenGui
Instance.new("UICorner", Card).CornerRadius = UDim.new(0,20)

local BorderOuter = Instance.new("Frame")
BorderOuter.Size             = UDim2.new(1,4,1,4)
BorderOuter.Position         = UDim2.new(0,-2,0,-2)
BorderOuter.BackgroundColor3 = Colors.Accent1
BorderOuter.BorderSizePixel  = 0
BorderOuter.ZIndex           = 1
BorderOuter.Parent           = Card
Instance.new("UICorner", BorderOuter).CornerRadius = UDim.new(0,22)

local BorderOuter2 = Instance.new("Frame")
BorderOuter2.Size                   = UDim2.new(1,4,1,4)
BorderOuter2.Position               = UDim2.new(0,-2,0,-2)
BorderOuter2.BackgroundColor3       = Colors.Accent2
BorderOuter2.BackgroundTransparency = 0.5
BorderOuter2.BorderSizePixel        = 0
BorderOuter2.ZIndex                 = 1
BorderOuter2.Parent                 = Card
Instance.new("UICorner", BorderOuter2).CornerRadius = UDim.new(0,22)

-- ── HEADER ──────────────────────────────────────
local Header = Instance.new("Frame")
Header.Size             = UDim2.new(1,0,0,90)
Header.BackgroundColor3 = Colors.Panel
Header.BorderSizePixel  = 0
Header.ZIndex           = 3
Header.Parent           = Card
Instance.new("UICorner", Header).CornerRadius = UDim.new(0,20)

local HFix = Instance.new("Frame")
HFix.Size             = UDim2.new(1,0,0,22)
HFix.Position         = UDim2.new(0,0,1,-22)
HFix.BackgroundColor3 = Colors.Panel
HFix.BorderSizePixel  = 0
HFix.ZIndex           = 3
HFix.Parent           = Header

local AccentLine = Instance.new("Frame")
AccentLine.Size             = UDim2.new(1,0,0,2)
AccentLine.Position         = UDim2.new(0,0,1,-2)
AccentLine.BackgroundColor3 = Colors.Accent1
AccentLine.BorderSizePixel  = 0
AccentLine.ZIndex           = 4
AccentLine.Parent           = Header

-- Logo circle
local LogoCircle = Instance.new("Frame")
LogoCircle.Size             = UDim2.new(0,60,0,60)
LogoCircle.Position         = UDim2.new(0,18,0.5,-30)
LogoCircle.BackgroundColor3 = Colors.Accent1
LogoCircle.BorderSizePixel  = 0
LogoCircle.ZIndex           = 5
LogoCircle.Parent           = Header
Instance.new("UICorner", LogoCircle).CornerRadius = UDim.new(1,0)

local LogoBorder = Instance.new("UIStroke")
LogoBorder.Color     = Colors.Accent2
LogoBorder.Thickness = 2.5
LogoBorder.Parent    = LogoCircle

-- Avatar Roblox
local AvatarImg = Instance.new("ImageLabel")
AvatarImg.Size                   = UDim2.new(1,0,1,0)
AvatarImg.BackgroundTransparency = 1
AvatarImg.Image                  = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=150&height=150&format=png"
AvatarImg.ZIndex                 = 6
AvatarImg.Parent                 = LogoCircle
Instance.new("UICorner", AvatarImg).CornerRadius = UDim.new(1,0)

local ScriptTitle = Instance.new("TextLabel")
ScriptTitle.Size                   = UDim2.new(1,-100,0,28)
ScriptTitle.Position               = UDim2.new(0,90,0,14)
ScriptTitle.BackgroundTransparency = 1
ScriptTitle.Text                   = "KH Script"
ScriptTitle.TextColor3             = Colors.Text
ScriptTitle.TextSize               = 20
ScriptTitle.Font                   = Enum.Font.GothamBold
ScriptTitle.TextXAlignment         = Enum.TextXAlignment.Left
ScriptTitle.ZIndex                 = 5
ScriptTitle.Parent                 = Header

local Badge = Instance.new("Frame")
Badge.Size             = UDim2.new(0,72,0,20)
Badge.Position         = UDim2.new(0,90,0,47)
Badge.BackgroundColor3 = Colors.Accent2
Badge.BorderSizePixel  = 0
Badge.ZIndex           = 5
Badge.Parent           = Header
Instance.new("UICorner", Badge).CornerRadius = UDim.new(0,6)

local BadgeText = Instance.new("TextLabel")
BadgeText.Size                   = UDim2.new(1,0,1,0)
BadgeText.BackgroundTransparency = 1
BadgeText.Text                   = "🔒 PRIVATE"
BadgeText.TextColor3             = Colors.Text
BadgeText.TextSize               = 11
BadgeText.Font                   = Enum.Font.GothamBold
BadgeText.ZIndex                 = 6
BadgeText.Parent                 = Badge

local VerTag = Instance.new("TextLabel")
VerTag.Size                   = UDim2.new(0,60,0,20)
VerTag.Position               = UDim2.new(1,-75,0,14)
VerTag.BackgroundTransparency = 1
VerTag.Text                   = "v2.0"
VerTag.TextColor3             = Colors.Gold
VerTag.TextSize               = 13
VerTag.Font                   = Enum.Font.GothamBold
VerTag.TextXAlignment         = Enum.TextXAlignment.Right
VerTag.ZIndex                 = 5
VerTag.Parent                 = Header

-- ── BODY ────────────────────────────────────────

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size                   = UDim2.new(1,-40,0,18)
KeyLabel.Position               = UDim2.new(0,20,0,106)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text                   = "🔑  Nhập key của bạn"
KeyLabel.TextColor3             = Colors.SubText
KeyLabel.TextSize               = 12
KeyLabel.Font                   = Enum.Font.GothamBold
KeyLabel.TextXAlignment         = Enum.TextXAlignment.Left
KeyLabel.ZIndex                 = 3
KeyLabel.Parent                 = Card

local InputFrame = Instance.new("Frame")
InputFrame.Size             = UDim2.new(1,-40,0,48)
InputFrame.Position         = UDim2.new(0,20,0,128)
InputFrame.BackgroundColor3 = Colors.Input
InputFrame.BorderSizePixel  = 0
InputFrame.ZIndex           = 3
InputFrame.Parent           = Card
Instance.new("UICorner", InputFrame).CornerRadius = UDim.new(0,12)

local InputStroke = Instance.new("UIStroke")
InputStroke.Color        = Colors.Accent1
InputStroke.Thickness    = 1.5
InputStroke.Transparency = 0.5
InputStroke.Parent       = InputFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size                   = UDim2.new(1,-16,1,0)
KeyInput.Position               = UDim2.new(0,12,0,0)
KeyInput.BackgroundTransparency = 1
KeyInput.PlaceholderText        = "Dán key vào đây..."
KeyInput.PlaceholderColor3      = Colors.SubText
KeyInput.TextColor3             = Colors.Text
KeyInput.TextSize               = 14
KeyInput.Font                   = Enum.Font.Gotham
KeyInput.ClearTextOnFocus       = false
KeyInput.ZIndex                 = 4
KeyInput.Parent                 = InputFrame

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size                   = UDim2.new(1,-40,0,18)
StatusLabel.Position               = UDim2.new(0,20,0,182)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text                   = ""
StatusLabel.TextColor3             = Colors.SubText
StatusLabel.TextSize               = 12
StatusLabel.Font                   = Enum.Font.Gotham
StatusLabel.TextXAlignment         = Enum.TextXAlignment.Left
StatusLabel.ZIndex                 = 3
StatusLabel.Parent                 = Card

local UnlockBtn = Instance.new("TextButton")
UnlockBtn.Size             = UDim2.new(1,-40,0,48)
UnlockBtn.Position         = UDim2.new(0,20,0,206)
UnlockBtn.BackgroundColor3 = Colors.Accent1
UnlockBtn.BorderSizePixel  = 0
UnlockBtn.Text             = "🔓  Unlock Script"
UnlockBtn.TextColor3       = Colors.Text
UnlockBtn.TextSize         = 15
UnlockBtn.Font             = Enum.Font.GothamBold
UnlockBtn.ZIndex           = 3
UnlockBtn.Parent           = Card
Instance.new("UICorner", UnlockBtn).CornerRadius = UDim.new(0,12)

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Color        = Colors.Accent2
BtnStroke.Thickness    = 1.5
BtnStroke.Transparency = 0.5
BtnStroke.Parent       = UnlockBtn

local Footer = Instance.new("TextLabel")
Footer.Size                   = UDim2.new(1,0,0,22)
Footer.Position               = UDim2.new(0,0,1,-28)
Footer.BackgroundTransparency = 1
Footer.Text                   = "Made by KhanhHuy & Khang  •  v2.0"
Footer.TextColor3             = Colors.SubText
Footer.TextSize               = 11
Footer.Font                   = Enum.Font.Gotham
Footer.ZIndex                 = 3
Footer.Parent                 = Card

-- ── LOGIC ───────────────────────────────────────

UnlockBtn.MouseEnter:Connect(function()
    UnlockBtn.BackgroundColor3 = Colors.Accent2
end)
UnlockBtn.MouseLeave:Connect(function()
    UnlockBtn.BackgroundColor3 = Colors.Accent1
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
    for i = 1, 6 do
        Card.Position = UDim2.new(0.5, -210 + (i % 2 == 0 and 7 or -7), 0.5, -170)
        task.wait(0.04)
    end
    Card.Position = orig
end

local function checkKey()
    local input = KeyInput.Text:gsub("%s+", "")

    if input == "" then
        StatusLabel.Text       = "⚠  Vui lòng nhập key!"
        StatusLabel.TextColor3 = Colors.Error
        return
    end

    if input == VALID_KEY then
        StatusLabel.Text           = "✓  Key hợp lệ! Đang tải script..."
        StatusLabel.TextColor3     = Colors.Success
        InputStroke.Color          = Colors.Success
        UnlockBtn.BackgroundColor3 = Colors.Success
        UnlockBtn.Text             = "✓  Verified!"
        task.wait(1.2)
        runMainScript()
    else
        StatusLabel.Text       = "✗  Key không đúng! Thử lại."
        StatusLabel.TextColor3 = Colors.Error
        InputStroke.Color      = Colors.Error
        KeyInput.Text          = ""
        shakeCard()
        task.wait(1.5)
        InputStroke.Color        = Colors.Accent1
        InputStroke.Transparency = 0.5
        StatusLabel.Text         = ""
    end
end

UnlockBtn.MouseButton1Click:Connect(checkKey)

KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then checkKey() end
end)
