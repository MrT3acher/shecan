@ECHO OFF

if "%1%"=="enable" (
    netsh interface ipv4 set dns "Wi-Fi" static 178.22.122.100
    netsh interface ip add dns name="Wi-Fi" addr=185.51.200.2 index=2
    echo enabled
) ELSE (
    if "%1%"=="disable" (
        netsh interface ipv4 set dns "Wi-Fi" static 8.8.8.8
        netsh interface ip add dns name="Wi-Fi" addr=8.8.4.4 index=2
        echo disabled
    ) ELSE (
        echo "shecan enable|disable"
    )
)

@ECHO ON
