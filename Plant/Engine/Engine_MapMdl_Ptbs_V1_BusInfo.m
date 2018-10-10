% NAVI ECU Outport BusObject
% JMAAB Cooperative Control WS
% 2018/05/25  Isuzu Advanced Engineering Center,Ltd. Nishito

cellInfo = { ...
{...
'Eng_Info_in_Bus',...
'',...
sprintf('input exceptional signals'), ...
'Auto',...
'-1', {...
{'dummy', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'dummy signal' };...
 } ...
 } ...
{...
'Engine_in_Bus',...
'',...
sprintf('input physical signals'), ...
'Auto',...
'-1', {...
{'EngSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rad/s', 'engine speed' };...
 } ...
 } ...
{...
'Eng_Info_out_Bus',...
'',...
sprintf('output information signals'), ...
'Auto',...
'-1', {...
{'FuelMassFlw', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'kg/s', 'fuel mass flow' };...
{'EngSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', 'engine speed' };...
 } ...
 } ...
{...
'Engine_sensor_Bus',...
'',...
sprintf('output senor signals'), ...
'Auto',...
'-1', {...
{'EngineSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', 'engine speed' };...
{'CrankAngle', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'deg', 'crank angle' };...
 } ...
 } ...
{...
'Engine_out_Bus',...
'',...
sprintf('output physical signals'), ...
'Auto',...
'-1', {...
{'EngTrq', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'engien torque' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 