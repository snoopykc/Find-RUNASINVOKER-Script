# Find-RUNASINVOKER-Script
Powershell script that you can use in a remediation to find and remove batch files with certain contents.

Our use case for this script was to find students using a batch file with a RUNASINVOKER script to bypass admin prompts for running files. The file name often changed between students so it was ideal to be able to look inside of the batch file and find all of the copies that had the script inside. This script can be used to target any batch file and other documents containing certain strings.
