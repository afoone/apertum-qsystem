#!/bin/sh

# init
function pause(){
   read -p “$*”
}
# other stuff

pause 'Admin tools for change context. Press any key ...'


jar xf QSystem.jar ru/apertum/qsystem/spring/qsContext.xml
jar xf QSystem.jar ru/apertum/qsystem/spring/spring-beans-2.0.dtd

pause 'Context is open. Press any key ...'

java -cp QSystem.jar ru.apertum.qsystem.server.ChangeContext ru/apertum/qsystem/spring/qsContext.xml

pause 'Context is change. Press any key ...'

jar uf QSystem.jar ru/apertum/qsystem/spring/qsContext.xml

rm -r ru

pause 'Context is saved. Process is finished. Press any key ...'

