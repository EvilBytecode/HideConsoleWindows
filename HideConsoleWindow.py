import ctypes,time

ConsoleWindow = 0
kittywind = ctypes.windll.kernel32.GetConsoleWindow()
print("you can see this!")
time.sleep(3)
ctypes.windll.user32.ShowWindow(kittywind, ConsoleWindow)
print("you cannot see this!")
time.sleep(15)
