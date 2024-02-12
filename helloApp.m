% Create main figure
f = figure("Name", "Simple Hello App");

% Add button
pButton = uicontrol(f);
pButton.Style = "pushbutton";
pButton.String = "Click!";
pButton.Units = "normalized";
pButton.Position = [.25 .4 .2 .2];

% Add text box
tBox = uicontrol(f);
tBox.Style = "edit";
tBox.Enable = "off";
tBox.String = "";
tBox.HorizontalAlignment = "center";
tBox.Units = "normalized";
tBox.Position = [.55 .4 .2 .2];

% Attach callback
pButton.Callback = @(source, event)(feval("printToDialogue", tBox, "Hello, world!"));

