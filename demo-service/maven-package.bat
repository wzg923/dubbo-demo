@echo -----------------------------------------------------------------------------
@echo ���Ի������
@echo -----------------------------------------------------------------------------

@rem ���ñ�������ȡ��ǰĿ¼
set dir=%cd%
@echo ��ǰĿ¼%dir%
@echo ��ʼ���´���-ALL

@rem ����ָ��Ŀ¼
svn cleanup
svn update "%dir%"
@rem set MAVEN_OPTS=-XX:MaxPermSize=512M
mvn clean package -Ptest -Dmaven.test.skip=true
@pause