{ ����� - 'Timer' }                               { ��஭�� �.�.  04.05.03 }
Unit Timer;
InterFace
Uses Dos;

 Procedure DelayNer(sec100:Word);{����প� ��. �ணࠬ�� �� 㪠�. ���-�� �.ᥪ.}
 Function GetHour:Word;{ �㭪�� �����頥� ���-�� �ᮢ �� ����� ������ }
 Function GetMinute:Word;{ �㭪�� �����頥� ���-�� ����� �� ����� ������}
 Function GetSecond:Word;{�㭪�� �����頥� ���-�� ᥪ㭤 �� ����� ������}
 Function GetSec100:Word;{�㭪�� �����頥� ���-�� �.ᥪ㭤 �� ����� ������}

Implementation

 Procedure DelayNer(sec100:Word);
  Var
   msec,nMsec:word;
  Begin
   msec:=0; nMsec:=0;
   repeat
    if msec<>GetSec100 then
     begin
      msec:=GetSec100;
      nMsec:=nMsec+1;
     end;
   until(Sec100=NMsec);
  End;{   Delay   }

 Function GetHour:Word;
  Var
   hour,minute,second,sec100:word;
  Begin
   GetTime(hour,minute,second,sec100);
   GetHour:=Hour;
  End;  { GetHour:Word }

 Function GetMinute:Word;
  Var
   hour,minute,second,sec100:word;
  Begin
   GetTime(hour,minute,second,sec100);
   GetMinute:=minute;
  End;  { GetMinute:Word }

 Function GetSecond:Word;
  Var
   hour,minute,second,sec100:word;
  Begin
   GetTime(hour,minute,second,sec100);
   GetSecond:=Second;
  End;  { GetSecond:Word }

 Function GetSec100:Word;
  Var
   hour,minute,second,sec100:word;
  Begin
   GetTime(hour,minute,second,sec100);
   GetSec100:=sec100;
  End;  { GetSec100:Word }

End.