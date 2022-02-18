CLEAR MACROS         && Отмена системных назначений клавиш F1-F12
SET RESOURCE ON      && Cохранять настройки
                     && в таблице Foxuser.dbf
SET EXCLUSIVE OFF    && Базы данных доступны всем
SET MULTILOCKS ON    && Блокировка нескольких записей сразу
SET TALK OFF         && Не отображать результаты выполнения
                     && команд APPEND, AVERAGE,CALCULATE и др.
SET DELETED ON       && Помеченные к удалению записи невидимы
SET DEFAULT TO LEFT(SYS(16), RAT('\', SYS(16))-1)
SET PATH TO DBF,USER,FORM,REPORT,PROGRAM  
CLOSE DATABASES

m.LevelADM = 0

DO FORM begin
* Запуск обработчика событий Visual FoxPro
READ EVENTS

SET EXCLUSIVE ON
SET DELETED OFF
