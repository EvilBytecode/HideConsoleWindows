Add-Type @"
    using System;
    using System.Runtime.InteropServices;

    public class User32 {
        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
    }

    public class Kernel32 {
        [DllImport("kernel32.dll")]
        public static extern IntPtr GetConsoleWindow();
    }
"@

$kittyhide = 0

$kittywind = [Kernel32]::GetConsoleWindow()
[User32]::ShowWindow($kittywind, $kittyhide)
Write-Host "you cannot see this!"
Start-Sleep 15
