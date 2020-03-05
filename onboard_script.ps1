# Attempt to see if it's possible to have an onboarding script
# Download CMDER first

# Get Anaconda
curl -o conda5_2.exe https://repo.anaconda.com/archive/Anaconda3-5.2.0-Windows-x86_64.exe
.\conda5_2.exe /AddToPath=1 /RegisterPython=1 # Use /? to see more arguments/flags

# Build Tools
# --help to see more arguments/flags
# Found this by inspecting the XHR after clicking in the home page, just in case it changes in future
curl -o vsbuild_tools.exe https://download.visualstudio.microsoft.com/download/pr/378e5eb4-c1d7-4c05-8f5f-55678a94e7f4/a022deec9454c36f75dafe780b797988b6111cfc06431eb2e842c1811151c40b/vs_BuildTools.exe

# Selenium Driver
# Determine if user has already downloaded Chrome and what version of Chrome they have
# Download compatible version of the Driver/Chrome


Learned a bit about flagging for help from the command line for .exe executables
https://stackoverflow.com/a/11593467
