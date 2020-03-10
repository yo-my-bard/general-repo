# Attempt to see if it's possible to have an onboarding script
# Download CMDER first https://cmder.net/
# Unzip cmder, put the folder wherever it is easy access. Recommend the desktop. Additionally the cmder executable (green icon) item
# in the folder is recommended to be added as a shortcut either on the desktop, the taskbar, or in the start menu for quick access.
# Open up cmder, it will pause for a moment for an initial setup
# Ctrl + T to open a new tab. A prompt pops up; in the bottom right, check off "Run as Administrator" and Start and Yes
# ----type powershell and press Enter The prompt should now say: Windows PowerShell ...--- #MIGHT DELETE THIS
# On File Explorer, find the folder that has the onboarding script and the summit_requirements.txt file
# type cd and then drag that folder to the cmder screen, press Enter
# type powershell .\onboard_script.ps1 and press Enter
# This will take a while but you should see a "Writing web request..." textbox up top and text that says Downloading Anaconda
# Hopefully the rest takes care of itself.

# Get Anaconda
echo "Downloading Anaconda"
curl -o conda5_2.exe https://repo.anaconda.com/archive/Anaconda3-5.2.0-Windows-x86_64.exe
.\conda5_2.exe /AddToPath=1 /RegisterPython=1 /S /D=$ENV:UserProfile\Anaconda3 # Use /? to see more arguments/flags
conda --version #Check that it works
conda update -n base -c defaults conda -y #Update conda
echo "Finished updating Conda"

# Build Tools
# --help to see more arguments/flags
# Found this by inspecting the XHR after clicking in the home page, just in case it changes in future
echo "Downloading Build Tools"
curl -o vsbuild_tools.exe https://download.visualstudio.microsoft.com/download/pr/378e5eb4-c1d7-4c05-8f5f-55678a94e7f4/a022deec9454c36f75dafe780b797988b6111cfc06431eb2e842c1811151c40b/vs_BuildTools.exe
.\vsbuild_tools.exe --all --passive --norestart --wait
echo "Finished installing Build Tools"

# Create development environment and install packages using pip
echo "Creating a Summit Environment"
conda create --name summit python=3.6.* -y
conda init #This might cause trouble, didn't seem to take effect when I tried activating environment
conda activate summit
which python #Confirm Python path and version
pip install -r summit_requirements.txt #This will take a while
echo "Finished creating a Summit environment successfully. Run `activate summit` to begin your adventure"
exit

# Selenium Driver
# Determine if user has already downloaded Chrome and what version of Chrome they have
# Download compatible version of the Driver/Chrome


# Learned a bit about flagging for help from the command line for .exe executables
# https://stackoverflow.com/a/11593467
