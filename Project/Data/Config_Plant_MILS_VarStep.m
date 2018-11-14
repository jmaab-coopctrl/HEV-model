% -------------------------------------------------------------------
%  Modified from cs.set_param file�@Nishito
%  �v�����g���f���̃R���t�B�M�����[�V�����Q�Ƃ���m�t�@�C���G�N�X�|�[�g���ł��Ȃ��΍�
%  MATLAB version: 9.4.0.949201 (R2018a) Update 6
% -------------------------------------------------------------------
Config_Plant = Simulink.ConfigSet;

% �ȉ��̃R�}���h�̏�����ύX���Ȃ��ł��������B�p�����[�^�[�ԂɈˑ��֌W������܂��B
Config_Plant.set_param('Name', 'Config_Plant_MILS_VarStep'); % Name
Config_Plant.set_param('Description', ['�v�����g�A�g�b�v���f���pConfigur' ...
    'ation�p�����[�^', newline, 'MILS�p�@�σX�e�b�v']); % Description

% Original configuration set target is grt.tlc
Config_Plant.switchTarget('grt.tlc','');

Config_Plant.set_param('HardwareBoard', 'None');   % �n�[�h�E�F�A �{�[�h

Config_Plant.set_param('Solver', 'ode23s');   % �\���o�[

% Solver
Config_Plant.set_param('StartTime', '0.0');   % �J�n����
Config_Plant.set_param('StopTime', '660');   % �I������
Config_Plant.set_param('SolverType', 'Variable-step');   % �^�C�v
Config_Plant.set_param('MaxStep', 'auto');   % �ő�X�e�b�v �T�C�Y
Config_Plant.set_param('MinStep', 'auto');   % �ŏ��X�e�b�v �T�C�Y
Config_Plant.set_param('InitialStep', 'auto');   % �����X�e�b�v �T�C�Y
Config_Plant.set_param('RelTol', 'auto');   % ���΋��e�덷
Config_Plant.set_param('AbsTol', 'auto');   % ��΋��e�덷
Config_Plant.set_param('ShapePreserveControl', 'DisableAll');   % �`��̕ۑ�
Config_Plant.set_param('MaxConsecutiveMinStep', '1');   % �A���I�ȍŏ��X�e�b�v��
Config_Plant.set_param('SolverJacobianMethodControl', 'auto');   % �\���o�[�̃��R�r ���\�b�h
Config_Plant.set_param('DecoupledContinuousIntegration', 'off');   % �A���ϕ��̕�����L����
Config_Plant.set_param('MinimalZcImpactIntegration', 'off');   % �ϕ��̍ŏ��̃[���N���b�V���O�̉e����L����
Config_Plant.set_param('AutoInsertRateTranBlk', 'off');   % �f�[�^�]���ɑ΂��郌�[�g�ϊ��������I�Ɏ�舵��
Config_Plant.set_param('PositivePriorityOrder', 'off');   % �D�揇�ʂ̒l�������قǃ^�X�N�̗D�揇�ʂ��������Ƃ�����
Config_Plant.set_param('ZeroCrossControl', 'DisableAll');   % �[���N���b�V���O �R���g���[��

% Data Import/Export
Config_Plant.set_param('LoadExternalInput', 'off');   % �O�����͂̓ǂݍ���
Config_Plant.set_param('LoadInitialState', 'off');   % ������Ԃ̓ǂݍ���
Config_Plant.set_param('SaveTime', 'on');   % ���Ԃ̕ۑ�
Config_Plant.set_param('TimeSaveName', 'tout');   % ���ԕϐ�
Config_Plant.set_param('SaveState', 'off');   % ��Ԃ̕ۑ�
Config_Plant.set_param('SaveFormat', 'Array');   % �`��
Config_Plant.set_param('SaveOutput', 'off');   % �o�͂̕ۑ�
Config_Plant.set_param('SaveFinalState', 'off');   % �ŏI��Ԃ̕ۑ�
Config_Plant.set_param('SignalLogging', 'off');   % �M���̃��O
Config_Plant.set_param('DSMLogging', 'off');   % �f�[�^ �X�g�A
Config_Plant.set_param('LoggingToFile', 'off');   % �f�[�^�Z�b�g�̃f�[�^���t�@�C���Ƀ��O
Config_Plant.set_param('DatasetSignalFormat', 'timeseries');   % �f�[�^�Z�b�g�̐M���`��
Config_Plant.set_param('ReturnWorkspaceOutputs', 'off');   % �P��̃V�~�����[�V�����o��
Config_Plant.set_param('InspectSignalLogs', 'off');   % ���[�N�X�y�[�X �f�[�^�̃��O���V�~�����[�V���� �f�[�^ �C���X�y�N�^�[�ɋL�^
Config_Plant.set_param('LimitDataPoints', 'off');   % �f�[�^�_�𐧌����܂�
Config_Plant.set_param('Decimation', '1');   % �Ԉ���
Config_Plant.set_param('OutputOption', 'RefineOutputTimes');   % �o�̓I�v�V����
Config_Plant.set_param('Refine', '1');   % ���t�@�C�� �t�@�N�^�[

% Optimization
Config_Plant.set_param('BlockReduction', 'on');   % �u���b�N�팸
Config_Plant.set_param('OptimizeBlockIOStorage', 'on');   % �M���X�g���[�W�̍ė��p
Config_Plant.set_param('DataBitsets', 'off');   % boolean �f�[�^��ۑ����邽�߂Ƀr�b�g�Z�b�g���g�p
Config_Plant.set_param('StateBitsets', 'off');   % �X�e�[�g�̐ݒ��ۑ����邽�߂Ƀr�b�g�Z�b�g���g�p
Config_Plant.set_param('EnableMemcpy', 'on');   % �x�N�g���̊��蓖�Ăɑ΂��� memcpy ���g�p
Config_Plant.set_param('BufferReuse', 'on');   % ���[�J�� �u���b�N�o�͂̍ė��p
Config_Plant.set_param('ExpressionFolding', 'on');   % �]���ȃ��[�J���ϐ��̍폜 (���̂����ݍ��ݕ\��)
Config_Plant.set_param('LocalBlockOutputs', 'on');   % ���[�J���ȃu���b�N�̏o�͂�L���ɂ���
Config_Plant.set_param('ConditionallyExecuteInputs', 'on');   % �����t�����͕�����s
Config_Plant.set_param('BooleanDataType', 'on');   % boolean �f�[�^ (�� double) �Ƃ��Ę_���M��������
Config_Plant.set_param('LifeSpan', 'inf');   % �A�v���P�[�V�����̃��C�t�X�p�� (��)
Config_Plant.set_param('UseDivisionForNetSlopeComputation', 'off');   % �Œ菬���_�̐������z�v�Z�ɏ��Z���g�p
Config_Plant.set_param('UseFloatMulNetSlope', 'off');   % ���������_�̏�Z���g�p���Č��z�ݒ��␳
Config_Plant.set_param('DefaultUnderspecifiedDataType', 'double');   % �w��s���̃f�[�^�^�̊���l
Config_Plant.set_param('InitFltsAndDblsToZero', 'off');   % float �� double �� 0.0 �ɏ��������邽�߂� memset ���g�p
Config_Plant.set_param('EfficientFloat2IntCast', 'off');   % �͈͊O�̒l�����b�v���镂�������_���琮���ւ̕ϊ��R�[�h���폜
Config_Plant.set_param('EfficientMapNaN2IntZero', 'on');   % ���������_���琮���ւ̕ϊ��Ł@NaN �� 0 �Ƀ}�b�s���O����ĖO�a�����R�[�h���폜
Config_Plant.set_param('SimCompilerOptimization', 'off');   % �R���p�C���œK�����x��
Config_Plant.set_param('AccelVerboseBuild', 'off');   % �ڍׂȃA�N�Z�����[�^�̃r���h
Config_Plant.set_param('DefaultParameterBehavior', 'Tunable');   % ����̃p�����[�^�[����
Config_Plant.set_param('MemcpyThreshold', 64);   % memcpy �������l (�o�C�g)
Config_Plant.set_param('RollThreshold', 5);   % ���[�v�W�J�̂������l
Config_Plant.set_param('MaxStackSize', 'Inherit from target');   % �ő�X�^�b�N �T�C�Y (�o�C�g)
Config_Plant.set_param('ActiveStateOutputEnumStorageType', 'Native Integer');   % �����I�ɍ쐬�����񋓌^�̊�{�X�g���[�W�^
Config_Plant.set_param('BufferReusableBoundary', 'on');   % �ė��p�\�ȃT�u�V�X�e���̃o�b�t�@�[

% DiagnostiConfig_Plant
Config_Plant.set_param('AlgebraicLoopMsg', 'error');   % �㐔���[�v
Config_Plant.set_param('ArtificialAlgebraicLoopMsg', 'warning');   % �㐔���[�v�̍ŏ���
Config_Plant.set_param('BlockPriorityViolationMsg', 'warning');   % �u���b�N�D�揇�ʈᔽ
Config_Plant.set_param('MinStepSizeMsg', 'warning');   % �ŏ��X�e�b�v �T�C�Y�ᔽ
Config_Plant.set_param('TimeAdjustmentMsg', 'none');   % �T���v�� �q�b�g�̎��Ԓ���
%Config_Plant.set_param('MaxConsecutiveZConfig_PlantMsg', 'error');   % �A���I�ȃ[���N���b�V���O�ᔽ
Config_Plant.set_param('MaxConsecutiveZCsMsg', 'error');
Config_Plant.set_param('UnknownTsInhSupMsg', 'warning');   % �w��̂Ȃ��T���v�����Ԃ̌p��
Config_Plant.set_param('ConsistencyChecking', 'none');   % �\���o�[ �f�[�^�̕s����
Config_Plant.set_param('SolverPrmCheckMsg', 'none');   % �����\���o�[ �p�����[�^�[�̑I��
Config_Plant.set_param('ModelReferenceExtraNoncontSigs', 'error');   % �s�v�ȗ��U�����M��
Config_Plant.set_param('StateNameClashWarn', 'warning');   % ��Ԗ��̏Փ�
Config_Plant.set_param('SimStateInterfaceChecksumMismatchMsg', 'warning');   % SimState �C���^�[�t�F�C�X�̃`�F�b�N�T���̕s��v
Config_Plant.set_param('SimStateOlderReleaseMsg', 'error');   % �Â������[�X����� SimState �I�u�W�F�N�g
Config_Plant.set_param('InheritedTsInSrcMsg', 'warning');   % -1 �̃T���v�����Ԃ��w�肳�ꂽ�\�[�X �u���b�N
Config_Plant.set_param('MultiTaskRateTransMsg', 'error');   % �}���`�^�X�N ���[�g�ϊ�
Config_Plant.set_param('SingleTaskRateTransMsg', 'none');   % �V���O���^�X�N ���[�g�ϊ�
%Config_Plant.set_param('MultiTaskCondExeConfig_PlantysMsg', 'error');   % �}���`�^�X�N�̏����t�����s�T�u�V�X�e��
Config_Plant.set_param('MultiTaskCondExecSysMsg', 'error');
Config_Plant.set_param('TasksWithSamePriorityMsg', 'warning');   % �����D�揇�ʂ����^�X�N
Config_Plant.set_param('SigSpecEnsureSampleTimeMsg', 'warning');   % Signal Specification �u���b�N�Ŏw�肳�ꂽ�T���v�����Ԃɂ���
Config_Plant.set_param('SignalResolutionControl', 'UseLocalSettings');   % �M���̊֘A�t��
Config_Plant.set_param('CheckMatrixSingularityMsg', 'none');   % ���ْl�s��ɂ�鏜�Z
Config_Plant.set_param('IntegerSaturationMsg', 'warning');   % �I�[�o�[�t���[�ŖO�a
Config_Plant.set_param('UnderSpecifiedDataTypeMsg', 'none');   % �w��s���̃f�[�^�^
Config_Plant.set_param('SignalRangeChecking', 'none');   % �V�~�����[�V�����͈͂̃`�F�b�N
Config_Plant.set_param('IntegerOverflowMsg', 'warning');   % �I�[�o�[�t���[���Ƀ��b�v
Config_Plant.set_param('SignalInfNanChecking', 'none');   % Inf �܂��� NaN �̃u���b�N�o��
Config_Plant.set_param('StringTruncationChecking', 'error');   % string �؂�̂ă`�F�b�N
Config_Plant.set_param('RTPrefix', 'error');   % ���ʎq�� "rt" �ړ���
Config_Plant.set_param('ParameterDowncastMsg', 'error');   % �_�E���L���X�g�̌��o
Config_Plant.set_param('ParameterOverflowMsg', 'error');   % �I�[�o�[�t���[�̌��o
Config_Plant.set_param('ParameterUnderflowMsg', 'none');   % �A���_�[�t���[�̌��o
Config_Plant.set_param('ParameterPrecisionLossMsg', 'warning');   % �������̌��o
Config_Plant.set_param('ParameterTunabilityLossMsg', 'warning');   % �����\���̏��������o
Config_Plant.set_param('ReadBeforeWriteMsg', 'UseLocalSettings');   % �������ݑO�̓ǂݎ������o
Config_Plant.set_param('WriteAfterReadMsg', 'UseLocalSettings');   % �ǂݎ���̏������݂����o
Config_Plant.set_param('WriteAfterWriteMsg', 'UseLocalSettings');   % �������݌�̏������݂����o
Config_Plant.set_param('MultiTaskDSMMsg', 'error');   % �}���`�^�X�N �f�[�^ �X�g�A
Config_Plant.set_param('UniqueDataStoreMsg', 'none');   % �f�[�^ �X�g�A���̏d��
Config_Plant.set_param('UnderspecifiedInitializationDetection', 'Classic');   % �w��s���̏������̌��o
Config_Plant.set_param('MergeDetectMultiDrivingBlocksExec', 'none');   % �����^�C�� �X�e�b�v�Ŏ��s���镡���̋쓮�u���b�N�����o
Config_Plant.set_param('CheckSSInitialOutputMsg', 'on');   % ��`����Ă��Ȃ��T�u�V�X�e���̏����o�͂̃`�F�b�N
Config_Plant.set_param('CheckExecutionContextRuntimeOutputMsg', 'off');   % ���s�R���e�L�X�g�̎��s���̏o�͂��`�F�b�N
Config_Plant.set_param('ArrayBoundsChecking', 'none');   % �z��͈͂̒���
Config_Plant.set_param('AssertControl', 'UseLocalSettings');   % Model Verification �u���b�N��L���ɂ���
Config_Plant.set_param('AllowSymbolicDim', 'on');   % �V���{���b�N�����w��̋���
Config_Plant.set_param('UnnecessaryDatatypeConvMsg', 'none');   % �s�K�v�Ȍ^�ϊ�
Config_Plant.set_param('VectorMatrixConversionMsg', 'none');   % �x�N�g��/�s��u���b�N���͕ϊ�
Config_Plant.set_param('Int32ToFloatConvMsg', 'warning');   % 32 �r�b�g�̐�����P���x���������_�ɕϊ�
Config_Plant.set_param('FixptConstUnderflowMsg', 'none');   % �A���_�[�t���[�̌��o
Config_Plant.set_param('FixptConstOverflowMsg', 'none');   % �I�[�o�[�t���[�̌��o
Config_Plant.set_param('FixptConstPrecisionLossMsg', 'none');   % �������̌��o
Config_Plant.set_param('SignalLabelMismatchMsg', 'none');   % �M�����x���̕s��v
Config_Plant.set_param('UnconnectedInputMsg', 'warning');   % �ڑ�����Ă��Ȃ��u���b�N�̓��͒[�q
Config_Plant.set_param('UnconnectedOutputMsg', 'warning');   % �ڑ�����Ă��Ȃ��u���b�N�̏o�͒[�q
Config_Plant.set_param('UnconnectedLineMsg', 'warning');   % �ڑ�����Ă��Ȃ����C��
Config_Plant.set_param('RootOutportRequireBusObject', 'warning');   % ���[�g�� Outport �u���b�N�̖���`�̃o�X �I�u�W�F�N�g
Config_Plant.set_param('BusObjectLabelMismatch', 'warning');   % �v�f���̕s��v
Config_Plant.set_param('StrictBusMsg', 'ErrorLevel1');   % �x�N�g���Ƃ��Ĉ�����o�X�M��
Config_Plant.set_param('NonBusSignalsTreatedAsBus', 'none');   % �o�X�M���Ƃ��Ĉ������o�X�M��
Config_Plant.set_param('BusNameAdapt', 'WarnAndRepair');   % �o�X�I�����C��
Config_Plant.set_param('InvalidFcnCallConnMsg', 'error');   % �����Ȋ֐��Ăяo���ڑ�
Config_Plant.set_param('FcnCallInpInsideContextMsg', 'warning');   % �R���e�L�X�g�ˑ��̓���
Config_Plant.set_param('SFcnCompatibilityMsg', 'none');   % �A�b�v�O���[�h�̕K�v�� S-function
Config_Plant.set_param('FrameProcessingCompatibilityMsg', 'error');   % �u���b�N�̓���͐M���̃t���[���̏�ԂɈˑ�����
Config_Plant.set_param('ModelReferenceVersionMismatchMessage', 'none');   % Model �u���b�N �o�[�W�����̕s��v
Config_Plant.set_param('ModelReferenceIOMismatchMessage', 'none');   % �[�q�ƃp�����[�^�[�̕s��v
Config_Plant.set_param('ModelReferenceIOMsg', 'none');   % �����ȃ��[�g�� Inport/Outport �u���b�N�̐ڑ�
Config_Plant.set_param('ModelReferenceDataLoggingMessage', 'warning');   % �T�|�[�g����Ȃ��f�[�^ ���O
Config_Plant.set_param('SaveWithDisabledLinksMsg', 'warning');   % �u���b�N���}�͖��������ꂽ���C�u���� �����N���܂�
Config_Plant.set_param('SaveWithParameterizedLinksMsg', 'warning');   % �u���b�N���}�̓p�����[�^�[�t���̃��C�u���� �����N���܂�
Config_Plant.set_param('SFUnusedDataAndEventsDiag', 'warning');   % ���g�p�̃f�[�^�A�C�x���g�A���b�Z�[�W����ъ֐�
Config_Plant.set_param('SFUnexpectedBacktrackingDiag', 'warning');   % �\�����ʃo�b�N�g���b�L���O
Config_Plant.set_param('SFInvalidInputDataAccessInChartInitDiag', 'warning');   % �`���[�g�������̖����ȓ��̓f�[�^ �A�N�Z�X
Config_Plant.set_param('SFNoUnconditionalDefaultTransitionDiag', 'warning');   % �������̃f�t�H���g�J�ڂ��Ȃ�
Config_Plant.set_param('SFTransitionOutsideNaturalParentDiag', 'warning');   % ���R�Ȑe���O�ꂽ�J��
Config_Plant.set_param('SFUnreachableExecutionPathDiag', 'warning');   % ���B�s�\�̎��s�p�X
Config_Plant.set_param('SFUndirectedBroadcastEventsDiag', 'warning');   % �w���̂Ȃ��C�x���g �u���[�h�L���X�g
Config_Plant.set_param('SFTransitionActionBeforeConditionDiag', 'warning');   % �����A�N�V�����̑O�Ɏw�肳�ꂽ�J�ڃA�N�V����
Config_Plant.set_param('SFOutputUsedAsStateInMooreChartDiag', 'error');   % Moore �`���[�g�ɂ�����o�͂̏������ݑO�̓ǂݎ��
Config_Plant.set_param('SFTemporalDelaySmallerThanSampleTimeDiag', 'warning');   % �T���v�����O���������Z����Ύ��Ԃ̎����l
Config_Plant.set_param('SFSelfTransitionDiag', 'warning');   % ���[�t �X�e�[�g�ł̎��ȑJ��
Config_Plant.set_param('SFExecutionAtInitializationDiag', 'none');   % ���̓C�x���g������ꍇ�ɖ����ɂȂ� '�����������s'
Config_Plant.set_param('SFMachineParentedDataDiag', 'warning');   % �f�[�^ �X�g�A �������̑���Ƀ}�V����e�Ƃ���f�[�^���g�p
Config_Plant.set_param('IgnoredZcDiagnostic', 'warning');   % �������ꂽ�[���N���b�V���O
Config_Plant.set_param('InitInArrayFormatMsg', 'warning');   % ������Ԃ��z��
Config_Plant.set_param('MaskedZcDiagnostic', 'warning');   % �}�X�N���ꂽ�[���N���b�V���O
Config_Plant.set_param('ModelReferenceSymbolNameMessage', 'warning');   % ���ʎq�̍ő�̒������s�\��
Config_Plant.set_param('AllowedUnitSystems', 'all');   % �����ꂽ�P�ʌn
Config_Plant.set_param('UnitsInconsistencyMsg', 'warning');   % �P�ʂ̕s��v���b�Z�[�W
Config_Plant.set_param('AllowAutomaticUnitConversions', 'on');   % �����P�ʕϊ�������
Config_Plant.set_param('ForceCombineOutputUpdateInSim', 'off');   % �R�[�h��������уV�~�����[�V�����p�ɏo�̓��\�b�h�ƍX�V���\�b�h������

% Hardware Implementation
Config_Plant.set_param('ProdHWDeviceType', '32-bit Generic');   % ���i�f�o�C�X�̃x���_�[�ƃ^�C�v
Config_Plant.set_param('ProdLargestAtomicInteger', 'Char');   % �ő� Atomic �����T�C�Y
Config_Plant.set_param('ProdLargestAtomicFloat', 'None');   % �ő� Atomic ���������_�T�C�Y
Config_Plant.set_param('ProdIntDivRoundTo', 'Undefined');   % ���i�n�[�h�E�F�A�̕����t�������̏��Z�̊ۂ�
Config_Plant.set_param('ProdEqTarget', 'on');   % �e�X�g �n�[�h�E�F�A�𐻕i�n�[�h�E�F�A�Ɠ����ɂ���
Config_Plant.set_param('TargetPreprocMaxBitsSint', 32);   % C �v���v���Z�b�T�̕����t�������̍ő�r�b�g��
Config_Plant.set_param('TargetPreprocMaxBitsUint', 32);   % C �v���v���Z�b�T�̕����Ȃ������̍ő�r�b�g��

% Model Referencing
Config_Plant.set_param('UpdateModelReferenceTargets', 'IfOutOfDateOrStructuralChange');   % ���r���h
Config_Plant.set_param('EnableParallelModelReferenceBuilds', 'off');   % ���񃂃f���̎Q�ƃr���h��L����
Config_Plant.set_param('ModelReferenceNumInstancesAllowed', 'Multi');   % �ŏ�ʃ��f�����Ƃɉ\�ȃC���X�^���X�̑���
Config_Plant.set_param('PropagateVarSize', 'Infer from blocks in model');   % �σT�C�Y�̐M���̃T�C�Y��`�d
Config_Plant.set_param('ModelReferenceMinAlgLoopOccurrences', 'off');   % �㐔���[�v�̔����̍ŏ���
Config_Plant.set_param('EnableRefExpFcnMdlSchedulingChecks', 'on');   % �Q�ƃ��f���̌����ȃX�P�W���[�����O �`�F�b�N��L���ɂ���
Config_Plant.set_param('PropagateSignalLabelsOutOfModel', 'off');   % �Q�ƃ��f���̊O�̂��ׂĂ̐M���̃��x����`�d
Config_Plant.set_param('ModelReferencePassRootInputsByReference', 'on');   % �R�[�h�����ŌŒ�T�C�Y�̃X�J���[�̃��[�g���͂�l�n���ōs��
Config_Plant.set_param('ModelDependencies', '');   % ���f���̈ˑ��֌W
Config_Plant.set_param('ParallelModelReferenceErrorOnInvalidPool', 'on');   % ����v�[���̐������`�F�b�N�����s
Config_Plant.set_param('SupportModelReferenceSimTargetCustomCode', 'off');   % �Q�ƃ��f���ɃJ�X�^�� �R�[�h���܂߂�

% Simulation Target
Config_Plant.set_param('MATLABDynamicMemAlloc', 'on');   % MATLAB �֐��ł̓��I���������蓖��
Config_Plant.set_param('MATLABDynamicMemAllocThreshold', 65536);   % MATLAB �֐��ł̓��I���������蓖�Ă������l
Config_Plant.set_param('CompileTimeRecursionLimit', 50);   % �R���p�C������ MATLAB �֐��̍ċA���E�l
Config_Plant.set_param('EnableRuntimeRecursion', 'on');   % MATLAB �֐��̎��s���ċA��L���ɂ���
Config_Plant.set_param('SFSimEcho', 'on');   % �Z�~�R�����Ȃ��̃G�R�[�\��
Config_Plant.set_param('SimCtrlC', 'on');   % ���������m��
Config_Plant.set_param('SimIntegrity', 'on');   % �������̐��������m��
Config_Plant.set_param('SimGenImportedTypeDefs', 'off');   % �C���|�[�g�����o�X�Ɨ񋓌^�ɑ΂��� typedef �𐶐�����
Config_Plant.set_param('SimBuildMode', 'sf_incremental_build');   % �V�~�����[�V���� �^�[�Q�b�g�̃r���h ���[�h
Config_Plant.set_param('SimReservedNameArray', []);   % �\��
Config_Plant.set_param('SimParseCustomCode', 'on');   % �J�X�^�� �R�[�h�̃V���{�������
Config_Plant.set_param('SimCustomSourceCode', '');   % �\�[�X �t�@�C��
Config_Plant.set_param('SimCustomHeaderCode', '');   % �w�b�_�[ �t�@�C��
Config_Plant.set_param('SimCustomInitializer', '');   % �������֐�
Config_Plant.set_param('SimCustomTerminator', '');   % �I���֐�
Config_Plant.set_param('SimUserIncludeDirs', '');   % �C���N���[�h �f�B���N�g��
Config_Plant.set_param('SimUserSources', '');   % �\�[�X �t�@�C��
Config_Plant.set_param('SimUserLibraries', '');   % ���C�u����
Config_Plant.set_param('SimUserDefines', '');   % ��`
Config_Plant.set_param('SFSimEnableDebug', 'off');   % �V�~�����[�V�������̃u���[�N�|�C���g�ݒ������

% Code Generation
Config_Plant.set_param('TargetLang', 'C');   % ����
Config_Plant.set_param('Toolchain', 'Automatically locate an installed toolchain');   % Toolchain
Config_Plant.set_param('BuildConfiguration', 'Faster Builds');   % �r���h�\��
Config_Plant.set_param('ObjectivePriorities', []);   % �D�揇�ʂ��ݒ肳�ꂽ�ړI
Config_Plant.set_param('CheckMdlBeforeBuild', 'Off');   % �R�[�h�����O�Ƀ��f�����`�F�b�N
Config_Plant.set_param('GenCodeOnly', 'off');   % �R�[�h�����̂�
Config_Plant.set_param('PackageGeneratedCodeAndArtifacts', 'off');   % �R�[�h�ƃA�[�e�B�t�@�N�g�̃p�b�P�[�W��
Config_Plant.set_param('RTWVerbose', 'on');   % �ڍׂȃr���h (�R�}���h�\��)
Config_Plant.set_param('RetainRTWFile', 'off');   % .rtw �t�@�C�����c��
Config_Plant.set_param('ProfileTLC', 'off');   % TLC �v���t�@�C��
Config_Plant.set_param('TLCDebug', 'off');   % �R�[�h�������� TLC �f�o�b�K�[�����s
Config_Plant.set_param('TLCCoverage', 'off');   % �R�[�h�������� TLC �J�o���b�W�����s
Config_Plant.set_param('TLCAssert', 'off');   % TLC �A�T�[�V������L���ɂ���
Config_Plant.set_param('RTWUseSimCustomCode', 'off');   % �V�~�����[�V���� �^�[�Q�b�g�Ɠ����J�X�^�� �R�[�h�̐ݒ���g�p
Config_Plant.set_param('CustomSourceCode', '');   % �\�[�X �t�@�C��
Config_Plant.set_param('CustomHeaderCode', '');   % �w�b�_�[ �t�@�C��
Config_Plant.set_param('CustomInclude', '');   % �C���N���[�h �f�B���N�g��
Config_Plant.set_param('CustomSource', '');   % �\�[�X �t�@�C��
Config_Plant.set_param('CustomLibrary', '');   % ���C�u����
Config_Plant.set_param('CustomLAPACKCallback', '');   % �J�X�^�� LAPACK ���C�u�����̃R�[���o�b�N
Config_Plant.set_param('CustomFFTCallback', '');   % �J�X�^�� FFT ���C�u�����̃R�[���o�b�N
Config_Plant.set_param('CustomDefine', '');   % ��`
Config_Plant.set_param('CustomInitializer', '');   % �������֐�
Config_Plant.set_param('CustomTerminator', '');   % �I���֐�
Config_Plant.set_param('PostCodeGenCommand', '');   % �R�[�h������̃R�}���h
Config_Plant.set_param('SaveLog', 'off');   % �r���h ���O�̕ۑ�
Config_Plant.set_param('TLCOptions', '');   % TLC �R�}���h ���C�� �I�v�V����
Config_Plant.set_param('GenerateReport', 'off');   % �R�[�h�������|�[�g���쐬
Config_Plant.set_param('GenerateComments', 'on');   % �R�����g���܂߂�
Config_Plant.set_param('SimulinkBlockComments', 'on');   % Simulink �u���b�N�̃R�����g
Config_Plant.set_param('StateflowObjectComments', 'on');   % Stateflow �I�u�W�F�N�g�̃R�����g
Config_Plant.set_param('MATLABSourceComments', 'off');   % �R�����g�Ƃ��� MATLAB �\�[�X �R�[�h���܂߂�
Config_Plant.set_param('ShowEliminatedStatement', 'off');   % �������ꂽ�u���b�N��\��
Config_Plant.set_param('ForceParamTrailComments', 'off');   % 'Model default' �X�g���[�W �N���X�ɑ΂���ڍׂȃR�����g
Config_Plant.set_param('MaxIdLength', 31);   % ���ʎq�̍ő�̒���
Config_Plant.set_param('UseSimReservedNames', 'off');   % �V�~�����[�V���� �^�[�Q�b�g�Ɠ����\�񖼂��g�p
Config_Plant.set_param('ReservedNameArray', []);   % �\��
Config_Plant.set_param('TargetLangStandard', 'C89/C90 (ANSI)');   % �W���̐��w���C�u����
Config_Plant.set_param('CodeReplacementLibrary', 'None');   % �R�[�h�u�����C�u����
Config_Plant.set_param('UtilityFuncGeneration', 'Auto');   % ���L�R�[�h�̔z�u
Config_Plant.set_param('CodeInterfacePackaging', 'Nonreusable function');   % �R�[�h �C���^�[�t�F�C�X�̃p�b�P�[�W��
Config_Plant.set_param('GRTInterface', 'on');   % �N���V�b�N �R�[�� �C���^�[�t�F�C�X
Config_Plant.set_param('SupportNonFinite', 'on');   % ��L�����̃T�|�[�g
Config_Plant.set_param('MultiwordLength', 2048);   % �ő�꒷
Config_Plant.set_param('MatFileLogging', 'on');   % MAT �t�@�C���̃��O
Config_Plant.set_param('LogVarNameModifier', 'rt_');   % MAT �t�@�C���̕ϐ����̏C���q
Config_Plant.set_param('GenerateFullHeader', 'on');   % ���S�ȃt�@�C�� �o�i�[�̐���
Config_Plant.set_param('InferredTypesCompatibility', 'off');   % rtwtypes.h �Ƀv���v���Z�b�T���߂��쐬
Config_Plant.set_param('TargetLibSuffix', '');   % �^�[�Q�b�g ���C�u�������ɓK�p�����ڔ���
Config_Plant.set_param('TargetPreCompLibLocation', '');   % �v���R���p�C�����ꂽ���C�u�����̏ꏊ
Config_Plant.set_param('LUTObjectStructOrderExplicitValues', 'Size,Breakpoints,Table');   % �����I�Ȓl�̎w��Ɋւ��� LUT �I�u�W�F�N�g�\���̂̏���
Config_Plant.set_param('LUTObjectStructOrderEvenSpacing', 'Size,Breakpoints,Table');   % ���Ԋu�w��Ɋւ��� LUT �I�u�W�F�N�g�\���̂̏���
%Config_Plant.set_param('DynamiConfig_PlanttringBufferSize', 256);   % ���I�T�C�Y������̃o�b�t�@�[ �T�C�Y (�o�C�g)
Config_Plant.set_param('DynamicStringBufferSize', 256);
Config_Plant.set_param('ExtMode', 'off');   % �G�N�X�^�[�i�� ���[�h
Config_Plant.set_param('RTWCAPIParams', 'off');   % �p�����[�^�[�p C API �̐���
Config_Plant.set_param('RTWCAPIRootIO', 'off');   % ���[�g���x�� I/O �p C API �̐���
Config_Plant.set_param('RTWCAPISignals', 'off');   % �M���p C API �̐���
Config_Plant.set_param('RTWCAPIStates', 'off');   % ��ԗp C API �̐���
Config_Plant.set_param('GenerateASAP2', 'off');   % ASAP2 �C���^�[�t�F�C�X

% Simulink Coverage
Config_Plant.set_param('CovModelRefEnable', 'off');   % �Q�ƃ��f���̃J�o���b�W���L�^
Config_Plant.set_param('RecordCoverage', 'off');   % ���̃��f���̃J�o���b�W���L�^
Config_Plant.set_param('CovEnable', 'off');   % �J�o���b�W��͂�L���ɂ���
