@echo -----------------------------------------------------------------------------
@echo Maven deploy
@echo -----------------------------------------------------------------------------


set dir=%cd%
@echo ��ʼ���´���-ALL

@rem ����ָ��Ŀ¼
svn cleanup
svn update "%dir%"

@rem maven deploy pom SNAPSHOT�汾
mvn deploy:deploy-file -Dfile=pom.xml -DgroupId=com.guoyicap -DartifactId=dubbo-oauth -Dversion=1.0.0-SNAPSHOT -Durl=http://192.168.31.60:8081/repository/hosted-snapshots/ -Dpackaging=pom -DrepositoryId=nexus-snapshots

@rem maven deploy pom RELEASE�汾
@rem mvn deploy:deploy-file -Dfile=pom.xml -DgroupId=com.guoyicap -DartifactId=dubbo-oauth -Dversion=1.0.0-SNAPSHOT -Durl=http://192.168.31.60:8081/repository/hosted-releases/ -Dpackaging=pom -DrepositoryId=nexus-releases


@pause


