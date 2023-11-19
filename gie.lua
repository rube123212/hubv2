-- Crear una instancia de ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "YujiGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear una instancia de Frame para el fondo del GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.15, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(1, 0, 0) -- Cambiar a rojo
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = gui

-- Crear una instancia de TextLabel para mostrar el nombre "Yuji"
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.2, 0)
label.Text = "Yuji"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 20
label.Parent = frame

-- Crear una instancia de TextButton para el primer botón
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(1, 0, 0.3, 0)
button1.Position = UDim2.new(0, 0, 0.3, 0)
button1.Text = "Awaken"
button1.Parent = frame

-- Crear una instancia de TextButton para el segundo botón
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(1, 0, 0.3, 0)
button2.Position = UDim2.new(0, 0, 0.5, 0)
button2.Text = "Cleave"
button2.Parent = frame

-- Crear una instancia de TextButton para el tercer botón
local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(1, 0, 0.3, 0)
button3.Position = UDim2.new(0, 0, 0.7, 0)
button3.Text = "Domain"
button3.Parent = frame

-- Funciones que se ejecutan cuando se hace clic en los botones
local function onButtonClick1()
    local args = { [1] = "Awaken" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Yuji"):FireServer(unpack(args))
end

local function onButtonClick2()
    local args = { [1] = "Cleave" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Yuji"):FireServer(unpack(args))
end

local function onButtonClick3()
    local args = { [1] = "Domain" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Yuji"):FireServer(unpack(args))
end

-- Conectar las funciones al evento MouseButton1Click de los botones
button1.MouseButton1Click:Connect(onButtonClick1)
button2.MouseButton1Click:Connect(onButtonClick2)
button3.MouseButton1Click:Connect(onButtonClick3)

-- Funciones para permitir que el GUI se mueva al hacer clic y arrastrar
local isDragging = false
local offset = Vector2.new()

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
    elseif input.KeyCode == Enum.KeyCode.H then
        -- Minimizar o restaurar con la tecla "h"
        if frame.Size == UDim2.new(0.2, 0, 0.15, 0) then
            frame.Size = UDim2.new(0.2, 0, 0.05, 0)
        else
            frame.Size = UDim2.new(0.2, 0, 0.15, 0)
        end
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
        frame.Position = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)
-- Crear una instancia de ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "GojoGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear una instancia de Frame para el fondo del GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.15, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 1) -- Cambiar a azul
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = gui

-- Crear una instancia de TextLabel para mostrar el nombre "Gojo"
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.2, 0)
label.Text = "Gojo"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 20
label.Parent = frame

-- Crear una instancia de TextButton para el primer botón
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(1, 0, 0.3, 0)
button1.Position = UDim2.new(0, 0, 0.35, 0)
button1.Text = "Awaken"
button1.Parent = frame

-- Crear una instancia de TextButton para el segundo botón
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(1, 0, 0.3, 0)
button2.Position = UDim2.new(0, 0, 0.65, 0)
button2.Text = "Domain"
button2.Parent = frame

-- Funciones que se ejecutan cuando se hace clic en los botones
local function onButtonClick1()
    local args = { [1] = "Awaken" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Gojo"):FireServer(unpack(args))
end

local function onButtonClick2()
    local args = { [1] = "Domain" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Gojo"):FireServer(unpack(args))
end

-- Conectar las funciones al evento MouseButton1Click de los botones
button1.MouseButton1Click:Connect(onButtonClick1)
button2.MouseButton1Click:Connect(onButtonClick2)

-- Funciones para permitir que el GUI se mueva al hacer clic y arrastrar
local isDragging = false
local offset = Vector2.new()

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
    elseif input.KeyCode == Enum.KeyCode.H then
        -- Minimizar o restaurar con la tecla "h"
        if frame.Size == UDim2.new(0.2, 0, 0.15, 0) then
            frame.Size = UDim2.new(0.2, 0, 0.05, 0)
        else
            frame.Size = UDim2.new(0.2, 0, 0.15, 0)
        end
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
        frame.Position = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)
-- Crear una instancia de ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "CharactersGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear una instancia de Frame para el fondo del GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.15, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Cambiar a negro
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = gui

-- Crear una instancia de TextLabel para mostrar el nombre "Characters"
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.2, 0)
label.Text = "Characters"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 20
label.Parent = frame

-- Crear una instancia de TextButton para el primer botón
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(1, 0, 0.3, 0)
button1.Position = UDim2.new(0, 0, 0.35, 0)
button1.Text = "Deku"
button1.Parent = frame

-- Crear una instancia de TextButton para el segundo botón
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(1, 0, 0.3, 0)
button2.Position = UDim2.new(0, 0, 0.65, 0)
button2.Text = "Reigen"
button2.Parent = frame

-- Funciones que se ejecutan cuando se hace clic en los botones
local function onButtonClick1()
    local args = { [1] = "Deku" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Characters"):FireServer(unpack(args))
end

local function onButtonClick2()
    local args = { [1] = "Reigen" }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Characters"):FireServer(unpack(args))
end

-- Conectar las funciones al evento MouseButton1Click de los botones
button1.MouseButton1Click:Connect(onButtonClick1)
button2.MouseButton1Click:Connect(onButtonClick2)

-- Funciones para permitir que el GUI se mueva al hacer clic y arrastrar
local isDragging = false
local offset = Vector2.new()

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
    elseif input.KeyCode == Enum.KeyCode.H then
        -- Minimizar o restaurar con la tecla "h"
        if frame.Size == UDim2.new(0.2, 0, 0.15, 0) then
            frame.Size = UDim2.new(0.2, 0, 0.05, 0)
        else
            frame.Size = UDim2.new(0.2, 0, 0.15, 0)
        end
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
        frame.Position = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)
