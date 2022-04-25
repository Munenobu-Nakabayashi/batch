@echo off

for /l %%I in (0, 0, 0) do (
    ping localhost >NUL
)

exit /b 0