@echo -----------------------------------------------------------------------------
@echo Maven deploy
@echo -----------------------------------------------------------------------------


set dir=%cd%
@echo ��ʼ���´���-ALL

@rem ����ָ��Ŀ¼
svn cleanup
svn update "%dir%"

@rem maven deploy
set MAVEN_OPTS=-XX:MaxPermSize=256M
mvn deploy -Dmaven.test.skip=true


@pause


