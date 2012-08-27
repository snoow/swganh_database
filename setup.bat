:: ---------------------------------------------------------------------------------------
:: This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)
:: 
:: For more information, visit http://www.swganh.com
:: 
:: Copyright (c) 2006 - 2010 The SWG:ANH Team
:: ---------------------------------------------------------------------------------------
:: This library is free software; you can redistribute it and/or
:: modify it under the terms of the GNU Lesser General Public
:: License as published by the Free Software Foundation; either
:: version 2.1 of the License, or (at your option) any later version.
:: 
:: This library is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
:: Lesser General Public License for more details.
:: 
:: You should have received a copy of the GNU Lesser General Public
:: License along with this library; if not, write to the Free Software
:: Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
:: ---------------------------------------------------------------------------------------


:: -- Prepare the Command Processor
	SETLOCAL ENABLEEXTENSIONS
	SETLOCAL ENABLEDELAYEDEXPANSION
	MODE con:cols=72 lines=38

:: Set initial VARS
	SET db_user=----
	SET db_pass=----
	SET db_host=----
	SET "PROJECT_BASE=%~dp0"

:: Set the window title 
SET title=%~n0
TITLE %title%

::
:: Start
::

@ECHO OFF
	CALL:READ_CFG
	CALL:MainMenu

	::
	:: Functions
	::	

:READ_CFG
	FOR /F "tokens=2 delims==" %%a IN ('find "username" ^< setup.cfg') DO SET db_user=%%a
	FOR /F "tokens=2 delims==" %%a IN ('find "password" ^< setup.cfg') DO SET db_pass=%%a
	FOR /F "tokens=2 delims==" %%a IN ('find "host" ^< setup.cfg') DO SET db_host=%%a
	CLS
	ECHO.
	ECHO.                MIIIIIIIIIIIINNNNNNNNNNNNNNNDIIIIIIIINNN
	ECHO.                MIIIIIIIIIIINNNNNNNNNNNNNNNNNNNNNIIIINNN
	ECHO.                MIIIIIIIIONNNNNNNNN,,NNNNNNNNNNNNNNNINNN
	ECHO.                MIIIIIIINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	ECHO.                MIIIIIINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	ECHO.                MIIIIIDNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	ECHO.                MIIIIINNNNNNN=...............NNNNNNNNNNN
	ECHO.                MIIIIIINNNN8NNNNN......N+NNNNNN...DNNNNN
	ECHO.                MIIIIIIONNNNNNNN~,......DNNNNNNNNN..NNNN
	ECHO.                MIIIIIINNNNNNNN.N....... NNNNNNNNN....NN
	ECHO.                MIIIIINNNNNNN$.NN .........NNNNNN.....NN
	ECHO.                MIIINNNNNNNN.~NN8DNZ..................NN
	ECHO.                MINNNNNNNNN$NNNNNNNN............MN....NN
	ECHO.                MIINNNNNNNNNNNNN...:NN...........MN...NN
	ECHO.                MIINNNNNNNNNNNN,..... N..........N....NN
	ECHO.                MIINNNNNNNNNNNN.........D.............NN
	ECHO.                MIINNNNNNNNNNN8.......................NN
	ECHO.                MIINNNNNNNNNN ........................NN
	ECHO.                MIINNNNNNNND...NNN..................DNNN
	ECHO.                M8N80NNNNNNM...NNNNN................~.NN
	ECHO.                M0000NNNNNN ..NNNNNNN.................NN
	ECHO.                M0NNNNNNNNNN..NNNNNNN . NNN .........=NN
	ECHO.                M000NNNNNNNNN.NNNNNNNN..NNNN........NNNN
	ECHO.                M00NNNNNNNNNNNNNNNNNN7.............NNNNN
	ECHO.                M0000NNNNNNNNNNNNNNNNNN?.........NNNNNNN
	ECHO.                M0000NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	ECHO.                M00000000NNNNNNNNNNN..D..N..NDN.:NNM..NN
	ECHO.                M00000000NNNNNNNN7,NN.N..N.N,,,8.Z.:NNNN
	ECHO.                M00000000NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	ECHO.                M88888888888888888888888888888888888888N
	ECHO.
	ECHO.                     SWG:ANH - Database Installer
	ECHO.
	ECHO.
	CALL:sleep 2
	GOTO:EOF

:MainMenu
	CLS
	ECHO. ----------------------------------------------------------------------
	ECHO.  SWGANH Database Install Script                              (v.0.05)
	ECHO. ----------------------------------------------------------------------
	ECHO.  DB IP: %db_host%     DB Username: %db_user%    DB Password: %db_pass%
	ECHO. ----------------------------------------------------------------------
	ECHO.                                   ^|
	ECHO.          Database Setup           ^|       Database Maintenance
	ECHO.                                   ^|
	ECHO.   (1) Complete DB Install         ^|  (a) Backup accounts table
	ECHO.                                   ^|  (b) 
	ECHO.       Individual DB Setup         ^|
	ECHO.                                   ^|
	ECHO.   (2) swganh_static               ^|  (c) Complete Database Backup
	ECHO.   (3) swganh_astromech            ^|  (d) Delete Databases
	ECHO.   (4) swganh_galaxy               ^|  (e) 
	ECHO.   (5) swganh_galaxy_manager       ^|  (f) 
	ECHO.                                   ^|  (g) 
	ECHO.      Server Configuration         ^|
	ECHO.                                   ^|               Help
	ECHO.   (-)                             ^|
	ECHO.   (-)                             ^|  (h) Help
	ECHO.   (-)                             ^|  (s) Stats
	ECHO.                                   ^|
	ECHO.                                   ^|
	ECHO.                                   ^|
	ECHO.                                   ^|
	ECHO.                                   ^|
	ECHO. ----------------------------------------------------------------------
	SET /P Choice=Make a choice or ^(q^) quit : 

IF /I '%Choice%'=='1' GOTO :DatabaseCompleteSetup 

IF /I '%Choice%'=='2' GOTO :SchemaSWGANH_STATIC 

IF /I '%Choice%'=='3' GOTO :SchemaSWGANH_ASTROMECH

IF /I '%Choice%'=='4' GOTO :SchemaSWGANH_GALAXY

IF /I '%Choice%'=='5' GOTO :SchemaSWGANH_GALAXY_MANAGER

IF /I '%Choice%'=='6' GOTO :end

IF /I '%Choice%'=='7' GOTO :end

IF /I '%Choice%'=='8' GOTO :end

IF /I '%Choice%'=='9' GOTO :end

IF /I '%Choice%'=='0' GOTO :end

IF /I '%Choice%'=='@' GOTO :end

IF /I '%Choice%'=='a' GOTO :AccountsBackup

IF /I '%Choice%'=='b' GOTO :end

IF /I '%Choice%'=='c' GOTO :CompleteBackup 

IF /I '%Choice%'=='d' GOTO :DatabaseRemove

IF /I '%Choice%'=='e' GOTO :C 

IF /I '%Choice%'=='f' GOTO :PassChange 

IF /I '%Choice%'=='g' GOTO :IPChange

IF /I '%Choice%'=='h' GOTO :Help 

IF /I '%Choice%'=='s' GOTO :Stats

IF /I '%Choice%'=='Q' GOTO :end 

GOTO:MainMenu

:DatabaseCompleteSetup
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                      Installing *ALL* Databases
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Create the database schemas
	
	cd "%PROJECT_BASE%swganh_static"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% < "create.sql"
	cd "%PROJECT_BASE%swganh_galaxy"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% < "create.sql"
	cd "%PROJECT_BASE%swganh_galaxy_manager"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% < "create.sql"
	cd "%PROJECT_BASE%swganh_astromech"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% < "create.sql"

	:: Populate the data
		
	:: (swganh_static)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_static\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_static\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_static\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
	
	:: (swganh_galaxy)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_galaxy\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy  < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy --comments < "%%A"
		ECHO. Installing %%A [Done]
		)
	
	:: (swganh_galaxy_manager)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_galaxy_manager\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy_manager\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy_manager\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	:: (swganh_astromech)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_astromech\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_astromech\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_astromech\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
	
	GOTO:MainMenu
	
:SchemaSWGANH_GALAXY
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                   Installing *swganh_galaxy* Database
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Create the schema
	
	cd "%PROJECT_BASE%swganh_galaxy"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 < "create.sql"
		
	:: (swganh_galaxy)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_galaxy\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy --default-character-set=utf8 --comments < "%%A"
		ECHO. Installing %%A [Done]
		)		
		
	GOTO:MainMenu
	
:SchemaSWGANH_GALAXY_MANAGER
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                Installing *swganh_galaxy_manager* Database
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Create the schema
	
	cd "%PROJECT_BASE%swganh_galaxy_manager"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 < "create.sql"
		
	:: (swganh_galaxy_manager)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_galaxy_manager\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy_manager\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_galaxy_manager\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_galaxy_manager --default-character-set=utf8 --comments < "%%A"
		ECHO. Installing %%A [Done]
		)
	GOTO:MainMenu

:SchemaSWGANH_STATIC
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                   Installing *swganh_static* Database
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Create the schema
	
	cd "%PROJECT_BASE%swganh_static"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 < "create.sql"
		
	:: (swganh_static)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_static\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_static\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_static\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_static --default-character-set=utf8 --comments < "%%A"
		ECHO. Installing %%A [Done]
		)
	GOTO:MainMenu
	
:SchemaSWGANH_ASTROMECH
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                Installing *swganh_astromech* Database
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Create the schema
	
	cd "%PROJECT_BASE%swganh_astromech"
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 < "create.sql"
		
	:: (swganh_astromech)
	
	cd "%PROJECT_BASE%"
	cd "%PROJECT_BASE%swganh_astromech\scripts"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_astromech\functions"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 < "%%A"
		ECHO. Installing %%A [Done]
		)
		
	cd "%PROJECT_BASE%swganh_astromech\procedures"
		for /F %%A IN ('dir /b "*.sql" ^| sort') do (
			mysql --password=%db_pass% --host=%db_host% --user=%db_user% --database=swganh_astromech --default-character-set=utf8 --comments < "%%A"
		ECHO. Installing %%A [Done]
		)
	GOTO:MainMenu

	
:SchemaSetup
	GOTO:MainMenu
	
:ProcedureSetup
	GOTO:MainMenu
	
:FunctionSetup
	GOTO:MainMenu
	
:AdminScriptSetup
	GOTO:MainMenu

:AstroMechSetup
	GOTO:MainMenu

:GenerateResources
	GOTO:MainMenu

:GenerateBots
	GOTO:MainMenu

:ResetGlobalTimer
	GOTO:MainMenu
	
:CreateNewGalaxy 
	GOTO:MainMenu

:SetMOTD
	GOTO:MainMenu
	
:CompleteBackup
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                      Backing up *ALL* Databases
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Backup *ALL* Databases
	
	mysqldump --password=%db_pass% --host=%db_host% --user=%db_user% --databases swganh_galaxy swganh_galaxy_manager swganh_astromech swganh_static --create-options --extended-insert --routines --dump-date --triggers --comments > swganh_complete.bak

	ECHO.                           Backup Complete
	ECHO.
	ECHO.
	ECHO.
	CALL:sleep 5
	GOTO:MainMenu
	
:AccountsBackup
	CALL:ScreenClear
	CALL:ShortMenu
	ECHO.                        Backing up accounts data
	ECHO.
	ECHO.                              Please Wait
	ECHO.

	:: Backup account data
	
	mysqldump --password=%db_pass% --host=%db_host% --user=%db_user% swganh_galaxy_manager account --extended-insert --create-options --dump-date --triggers --comments -r swganh_accounts.bak

	ECHO.                           Backup Complete
	ECHO.
	ECHO.
	ECHO.
	CALL:sleep 5
	GOTO:MainMenu

	
:SchemaBackup
	GOTO:MainMenu
	
:AstroMechBackup
	GOTO:MainMenu

:DatabaseRemove
	GOTO:MainMenu

:UserChange
	GOTO:MainMenu	

:PassChange
	GOTO:MainMenu	

:IPChange
	GOTO:MainMenu	

:Help
	GOTO:MainMenu
	
:Stats
	CALL:ScreenClear
	CALL:ShortMenu
	
	ECHO. Project Base: %PROJECT_BASE%
	ECHO. Install Type Selected: %INSTALL_TYPE%
	ECHO. Backup Type Selected: %BACKUP_TYPE%
	ECHO.
	ECHO. User: %db_user%
	ECHO. Password: %db_pass%
	ECHO. IP: %db_host%
	CALL:sleep 5
	GOTO:MainMenu

:Setup
	GOTO:MainMenu

:sleep
	::	-- %~1 ? in, number of seconds to wait
	FOR /l %%a in (%~1,-1,1) do (ping -n 2 -w 1 127.0.0.1>NUL)
	GOTO:EOF

:GetFileCount
	set maxcnt=0
	for /F %%D IN ('dir /b "*.sql"') do (
		SET /A maxcnt += 1
	)
	GOTO:EOF

:initProgress -- initialize an internal progress counter and display the progress in percent
	::	-- %~1: in  - progress counter maximum, equal to 100 percent
	::	-- %~2: in  - title string formatter, default is '[P] completed.'
	set /a ProgressCnt=-1
	set /a ProgressMax=%~1
	set ProgressFormat=%~2
	if "%ProgressFormat%"=="" set ProgressFormat=[PPPP]
	set ProgressFormat=!ProgressFormat:[PPPP]=[P] completed.!
	call :doProgress
	GOTO:EOF


:doProgress -- display the next progress tick
	SET /a ProgressCnt+=1
	SETLOCAL
	SET /a per=100*ProgressCnt/ProgressMax
	SET per=!per!%%
	title %ProgressFormat:[P]=!per!%
	GOTO:EOF

:ScreenClear
	CLS
	GOTO:EOF
:ShortMenu
	CLS
	ECHO. ----------------------------------------------------------------------
	ECHO.  SWGANH Database Install Script                              (v.0.05)
	ECHO. ----------------------------------------------------------------------
	ECHO.  DB IP: %db_host%     DB Username: %db_user%    DB Password: %db_pass%
	ECHO. ----------------------------------------------------------------------
	ECHO.
	ECHO.
	GOTO:EOF

:end
	exit