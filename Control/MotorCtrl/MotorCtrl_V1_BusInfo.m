
cellInfo = { ...
{...
'MotorCtrl_Bus',...
'',...
sprintf('���[�^�[����M���o�X'), ...
'Auto',...
'-1', {...
{'MtrCtrl_MotorTrqDem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '���[�^�[�v���g���N' };...
 } ...
 } ...
{...
'MotorCtrl_PwtrCAN_Rx_Bus',...
'',...
sprintf('���[�^�[����p���[�g���C��CAN��M�M���o�X'), ...
'Auto',...
'-1', {...
{'TmCtrl_Clutch_position', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '���[�^�[�����g���N' };...
{'HEVCtrl_Motor_torque_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV���[�^�[�v���g���N' };...
{'EngCtrl_Engine_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', '�G���W����]���x' };...
 } ...
 } ...
{...
'MotorCtrl_PwtrCAN_Tx_Bus',...
'',...
sprintf('���[�^�[����p���[�g���C��CAN���M�M���o�X'), ...
'Auto',...
'-1', {...
{'MtrCtrl_Motor_torque_actual', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '���[�^�[�����g���N' };...
{'MtrCtrl_Motor_torque_available', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '�͍s�����\�g���N' };...
{'MtrCtrl_Motor_regen_torque_available', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '�񐶋����\�g���N' };...
 } ...
 } ...
{...
'MotorCtrl_Info_Bus',...
'',...
sprintf('���[�^�[������'), ...
'Auto',...
'-1', {...
{'MtrCtrl_MotorSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', '���[�^�[��]���x' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 