# Sets the folder permissions to full read/write capabilities for the group "everyone" on these folders =
# *******************************************************************************************************

$MyDir1 = "C:\ROGIERS"
$MyDir2 = "C:\Kvara"
$MyDir3 = "C:\Program Files\Scm Group"
$MyDir4 = "C:\Program Files (x86)\Scm Group"
$MyDir5 = "C:\ARDIS"
$MyDir6 = "C:\MaestroCut"


# Create array of the folders
$folders = @($MyDir1,$MyDir2,$MyDir3,$MyDir4,$MyDir5,$MyDir6)

# Sets the permission for every path. If not exists, skips to next one in array.
foreach ($i in $folders)
{
	# //// Create the Access Control Entry \\\\
		#Assign User or Group
			$identity = 'everyone'
		#Set the Rights the Account will have
			$rights = 'FullControl'
		#Set to allow inheritance still
			$inheritance = 'ContainerInherit, ObjectInherit'
		#Will Propagate to subfolder as long as inheritance isn't broken
			$propagation = 'None'
		#Set and Allow vs Disallow
			$type = 'Allow'
		#builds the Access Control Entry
			$ACE = New-Object System.Security.AccessControl.FileSystemAccessRule($identity,$rights,$inheritance,$propagation, $type)
		#Pulls in the Current Access Control List
			$Acl = Get-Acl -Path $i
		#Command to Insert access control entry into current access control list
			$Acl.AddAccessRule($ACE)
		#Sets the Access Control List onto the Dir
			Set-Acl -Path $i -AclObject $Acl
} 

