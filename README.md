# CW-Agent-Deploy

1. Open Group Policy Management
2. Right click on the domain and choose 'Create a new GPO and link it here'
3. Expand Computer Configuration -> Policies -> Windows Settings and go to Scripts
4. Double click Startup and add this batch file to Scripts: https://github.com/keepitsimple-dev/CW-Agent-Deploy/blob/main/Agent_Install.bat

Computers that are detected on the domain will automatically install the Connectwise Agent **on the next reboot**. They will appear under the New Client Holding section in Connectwise. If you would like to have them appear directly in the correct client, you would just need to point the batch file to the custom agent installer (.exe).
