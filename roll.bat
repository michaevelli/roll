@echo off

set /a min = 1
if [%1]==[] (
	set /a num = 0
) else (
	set /a num = %1
)
if [%2]==[] (
	set /a max = 0
) else (
	set /a max = %2
)
if [%3]==[] (
	set /a mod = 0
) else (
	set /a mod = %3
)

if %num% == 0 (
	echo nul
	goto end
)
if %max% == 0 (
	echo d0 does not exist
	goto end
)

echo %num%d%max%+%mod%

set /a total = %mod%
set /a count = 0
:loop
set /a count = %count% + 1

	set /a rnd=%random% %% (%max%) + (%min%)
	set /a total = %total%+%rnd%
	if %count% == 1 (
		set list=[%rnd%
	) else (
		set list=%list%, %rnd%
	)

if %count% == %num% (
	goto unloop
) else (
	goto loop
)
:unloop

set list=%list%]
echo %list%
echo %total%

:end