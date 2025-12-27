local RaknotUI = loadstring(game:HttpGet("https://raknot.dev/docs/raknot-ui.lua"))()

local Window = RaknotUI:CreateWindow({
    Title = "Raknot UI - Example",
    WelcomeTitle = "Welcome to Raknot UI!",
    WelcomeMessage = "Created by raknot (onys)"
})

local MainTab = Window:CreateTab("Main")

MainTab:AddButton("Test Button", function()
    Window:Notify("Button Clicked", "The button was pressed!", 2)
end)

MainTab:AddToggle("Toggle Feature", false, function(value)
end)

MainTab:AddSlider("Speed", 16, 100, 50, function(value)
end)

MainTab:AddDropdown("Select Weapon", {"Sword", "Bow", "Staff", "Dagger", "Axe"}, function(option)
    Window:Notify("Weapon Selected", "You chose: " .. option, 2)
end)

MainTab:AddTextbox("Player Name", "Enter your name...", function(value)
    Window:Notify("Name Set", "Your name is: " .. value, 2)
end)

MainTab:AddButton("Test Notification Stack", function()
    Window:Notify("Notification 1", "First notification appears", 3)
    task.wait(0.5)
    Window:Notify("Notification 2", "Second one pushes first up", 3)
    task.wait(0.5)
    Window:Notify("Notification 3", "Third one stacks above!", 3)
end)
