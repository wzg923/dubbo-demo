@echo -----------------------------------------------------------------------------
@echo Mybatis ����������
@echo -----------------------------------------------------------------------------

@rem ���ñ�������ȡ��ǰĿ¼
set dir=%cd%
@echo ��ǰĿ¼%dir%
@echo ��ʼ���ɴ���

java -jar mybatis-generator-core-1.3.2.jar -configfile generatorConfig.xml -overwrite
@pause