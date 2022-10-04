# Running Total Commander installer with arguments (described below) :
Start-Process -Wait -ArgumentList "/A1H1L5M1G1D1U1K0" -PassThru -FilePath '"C:\ROGIERS\INSTALL\UTILITIES\tcmd1051x32_64.exe"'
	# Daan : arguments must be written without '=' and without 'spaces'.

# Pass command line parameters to the unmodified installer in the form /AHLMGDUK
#   A=auto install,
#   H=run hidden,
#   L=language number,	[5=Nederlands]
#   M=install multiple languages,
#   G=create group in start menu,
#   D=create desktop icon,
#   U=update if target exists,
#   K=install wincmd.key from the same directory where the installer is located.
#   	All options accept a paramter 1 or 0, e.g. G0 or G1. L accepts a language number from install.inf, e.g. L2=german
#   	Hint: All options must be passed as a single parameter behind / and not as separate parameters.