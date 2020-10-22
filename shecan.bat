@ECHO OFF

if "%1%"=="enable" (
    netsh interface ipv4 set dns "Wi-Fi" static 178.22.122.100
    echo enabled
) ELSE (
    if "%1%"=="disable" (
        netsh interface ipv4 set dns "Wi-Fi" static 8.8.8.8
        echo disabled
    ) ELSE (
        echo "shecan enable|disable"
    )
)

@ECHO ON