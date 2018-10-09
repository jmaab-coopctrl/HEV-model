% ���f���Ŏg�p����Ă���x�[�X���[�N�X�y�[�X��enumeration����SLDD���enumaration�f�[�^�Ɉڍs����B
% �񋓌^�̒�`���C���|�[�g����̂́A���̌^���g�p���č쐬���Ă��邷�ׂĂ̐݌v�f�[�^���C���|�[�g������݂̂ł��B
% �񋓌^���f�[�^ �f�B�N�V���i���ɃC���|�[�g����ƁASimulink �� MATLAB �t�@�C���܂��͌^��`���܂� P �t�@�C����
% �����ɂ��邽�߁AMATLAB �x�[�X ���[�N�X�y�[�X�Ɏc���Ă���ϐ��̒�`�������܂��B
% 

%% 1.MATLAB �R�}���h �v�����v�g�ŁA���f�� �u���b�N���Ŏg�p�����񋓌^�̖��O���擾���܂��B
% Find all variables and enumerated types used in model blocks
usedTypesVars = Simulink.findVars('HEV_ECU_V1','IncludeEnumTypes',true);
% Here, EnumsReporting is the name of the model and
% usedTypesVars is an array of Simulink.VariableUsage objects

% Find indices of enumerated types that are defined by MATLAB files or P-files
enumTypesFile = strcmp({usedTypesVars.SourceType},'MATLAB file');

% Find indices of enumerated types that are defined using the function 
% Simulink.defineIntEnumType
enumTypesDynamic = strcmp({usedTypesVars.SourceType},'dynamic class');

% In one array, represent indices of both kinds of enumerated types
enumTypesIndex = enumTypesFile | enumTypesDynamic;

% Use logical indexing to return the names of used enumerated types
enumTypeNames = {usedTypesVars(enumTypesIndex).Name}'

%% 2.�f�[�^ �f�B�N�V���i�����J���āA����� Simulink.data.Dictionary �I�u�W�F�N�g�ŕ\���܂��B
ddConnection = Simulink.data.dictionary.open('HEV_ECU_V1_Local_data.sldd')


%% 3.importEnumTypes ���\�b�h���g�p���āA���f���̃u���b�N�Ŏg�p����Ă���񋓌^���C���|�[�g���܂��B
% ���̃��\�b�h�ɂ���ă^�[�Q�b�g �f�B�N�V���i���ɑ΂���ύX���ۑ�����邽�߁A���\�b�h���g�p����O�ɁA�ۑ�����Ă��Ȃ��ύX�����e�\�Ȃ��̂ł��邩�m�F���Ă��������B
% importEnumTypes �ŗ񋓌^���C���|�[�g����ƁA�񋓌^�N���X��`�t�@�C���̖��O���ύX����� .save ���ǉ�����܂��B
% ���Ƃ��Ό��̗񋓌^�N���X��`�t�@�C���̖��O�� Enum1.m �ł���΁ASimulink �ł� Enum1.m.save �Ƃ������O�ɂȂ�܂��B
% �ڍs����Ȃ������񋓌^�͍\���� unsuccessfulMigrations �ŕ񍐂���܂��B

[successfulMigrations, unsuccessfulMigrations] = importEnumTypes(ddConnection,enumTypeNames)

%% ���f����enumaration.m�t�@�C���̃����N�̕������@
% ���f����SLDD�g�p�O�̃��f���ɖ߂��@���f���v���p�e�B�̃f�[�^�����N��߂��Ă������N�͕�������Ȃ�
% 