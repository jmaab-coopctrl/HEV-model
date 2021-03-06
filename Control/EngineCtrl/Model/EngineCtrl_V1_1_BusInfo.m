
cellInfo = { ...
{...
'EngineCtrl_Bus',...
'',...
sprintf('エンジン制御信号バス'), ...
'Auto',...
'-1', {...
{'FuelMassCmd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'mg/St', '燃料噴射量指示' };...
{'MainSoi', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'deg', 'メイン噴射時期指示値' };...
{'EGR_valve_dem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '%', 'EGRバルブ指示値' };...
{'Turbo_ctrl_dem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '%', 'ターボ制御指示値' };...
 } ...
 } ...
{...
'EngineCtrl_PwtrCAN_Rx_Bus',...
'',...
sprintf('エンジンECU CAN入力信号バス'), ...
'Auto',...
'-1', {...
{'Engine_torque_request_HEV', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEVエンジン要求トルク' };...
 } ...
 } ...
{...
'EngineCtrl_PwtrCAN_Tx_Bus',...
'',...
sprintf('エンジンECU CAN出力信号バス'), ...
'Auto',...
'-1', {...
{'Engine_speed_EngCnt', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', 'エンジン回転速度' };...
{'Engine_torque_actual_EngCnt', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'エンジン供給トルク' };...
 } ...
 } ...
{...
'EngineCtrl_Info_Bus',...
'',...
sprintf('エンジンECU情報出力信号バス'), ...
'Auto',...
'-1', {...
{'EngTrqDem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'エンジントルク要求' };...
 } ...
 } ...
{...
'EngineCtrl_Info_in_Bus',...
'',...
sprintf('エンジンECU入力（例外処理用）'), ...
'Auto',...
'-1', {...
{'dummy', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'ダミー信号' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 
