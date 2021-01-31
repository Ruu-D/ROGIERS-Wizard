
# Activate the Windows Computer Restore functionality :
Enable-ComputerRestore -Drive "C:\"

# Create a restore point with a default name :
Checkpoint-Computer -Description "Automatically_generated_by_ROGIERS_Installer" -RestorePointType "MODIFY_SETTINGS"
