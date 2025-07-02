@echo off
title Proteção da Pasta BLOQUEAR
if EXIST "BLOQUEAR" (
    goto UNLOCK
) else (
    goto LOCK
)

:LOCK
md BLOQUEAR
attrib +h +s BLOQUEAR
echo Pasta BLOQUEAR criada e protegida!
goto End

:UNLOCK
echo Digite a senha para desbloquear a pasta BLOQUEAR:
set /p senha=
if NOT %senha%==0147 goto FAIL
attrib -h -s BLOQUEAR
echo Pasta desbloqueada com sucesso!
goto End

:FAIL
echo Senha incorreta. Tente novamente.
goto End

:End
pause
