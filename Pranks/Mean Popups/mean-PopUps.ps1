
<#
.SYNOPSIS
	This script will open a series of pop ups in order to taunt your target. I wrote it initially to target call center scammers

.DESCRIPTION 
	This program is to taunt your target. Below are a series insults you can modify as you like. The program will generate a PopUp 
	for each one of them. 
#>

#------------------------------------------------------------------------------------------------------------------------------------

Add-Type -AssemblyName System.Windows.Forms

# The number of times you want it to cycle through your list of questions

$cycles = 3

# List as many questions here as you like, it will cycke through all of them

$msgs = @(
"I hope your phone only charges from one angle"
"I hope your battery explodes"
"Whoops i just deleted system32"
"YOU ACTUALLY LIKE MICROSOFT TEAMS???"
"rm rf"
"I bet your code never compiles"
"hope you bluescreen"
"i bet you never update your pc"
"get your head out of the cloud"
"I bet IT never responds to your tickets"
)

for ($i=1; $i -le $cycles; $i++) {

Foreach ($msg in $msgs) {
[System.Windows.Forms.MessageBox]::Show($msg , "Dont_leave_pc_unlocked.exe" , 4 , 'Question')
}
}

