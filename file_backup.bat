@echo off

setlocal ENABLEDELAYEDEXPANSION

set time_tmp=%time: =0%
set now=%date:/=%%time_tmp:~0,2%%time_tmp:~3,2%%time_tmp:~6,2%

set copy=0
for %%f in (%*) do (
    echo ----------------------------------------
    echo %%f

    IF EXIST "%%~dpf\old" (
Rem        echo DIR "%%~dpf\old" already exists.
    ) ELSE (
        mkdir "%%~dpf\old"
    )

    set bk_obj=%%f

Rem ####################################
Rem # �t�@�C���T�C�Y�ƃt�@�C�������̎擾
    set filesize=%%~zf
    set attr=%%~af
    set d="d"
    set minus="-"
    set eval_d="!attr:~0,1!"

Rem ####################################
    if !d! EQU !eval_d! (
Rem        echo "%%f �̓f�B���N�g���ł�."
        echo D | xcopy /S /E /F /R /K /Y %%f "%%~dpf\old\%%~nf.%now%"
    ) 
    if !minus! EQU !eval_d! (
Rem        echo "%%f �̓t�@�C���ł�."
        echo F | xcopy %%f "%%~dpf\old\%%~nf.%now%%%~xf"
    )
    copy=1
)
echo ----------------------------------------


endlocal
