CLEAR MACROS         && ������ ��������� ���������� ������ F1-F12
SET RESOURCE ON      && C�������� ���������
                     && � ������� Foxuser.dbf
SET EXCLUSIVE OFF    && ���� ������ �������� ����
SET MULTILOCKS ON    && ���������� ���������� ������� �����
SET TALK OFF         && �� ���������� ���������� ����������
                     && ������ APPEND, AVERAGE,CALCULATE � ��.
SET DELETED ON       && ���������� � �������� ������ ��������
SET DEFAULT TO LEFT(SYS(16), RAT('\', SYS(16))-1)
SET PATH TO DBF,USER,FORM,REPORT,PROGRAM  
CLOSE DATABASES

m.LevelADM = 0

DO FORM begin
* ������ ����������� ������� Visual FoxPro
READ EVENTS

SET EXCLUSIVE ON
SET DELETED OFF
