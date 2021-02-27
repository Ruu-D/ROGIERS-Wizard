
# ------------------------------------------------------------------
# File extensions for Maestro CNC [UI00.exe] :
$exts=@(
	"pgmx",
	"xsp",
	"nstx",
	"mixx",
	"tchx")
echo "## Setting file associations for Maestro CNC ..."
foreach ($ext in $exts){
	$extfile=$ext+"file"
	$dotext="." + $ext
	cmd /c assoc $dotext=$extfile
	cmd /c "ftype $extfile=""C:\Program Files (x86)\SCM Group\Maestro\UI00.exe"" ""%1"""
}
# ------------------------------------------------------------------
# File extensions for Maestro ToolManager [ToolManager.exe] :
$exts=@(
	"tlgx")
foreach ($ext in $exts){
	$extfile=$ext+"file"
	$dotext="." + $ext
	cmd /c assoc $dotext=$extfile
	cmd /c "ftype $extfile=""C:\Program Files (x86)\SCM Group\Maestro\ToolManager.exe"" ""%1"""
}
# ------------------------------------------------------------------
# File extensions for Maestro ToolEquipmentManager [ToolEquipmentManager.exe] :
$exts=@(
	"atrx")
foreach ($ext in $exts){
	$extfile=$ext+"file"
	$dotext="." + $ext
	cmd /c assoc $dotext=$extfile
	cmd /c "ftype $extfile=""C:\Program Files (x86)\SCM Group\Maestro\ToolEquipmentManager.exe"" ""%1"""
}
# ------------------------------------------------------------------
# File extensions for Maestro ConfigurationManager [ConfigurationManager.exe] :
$exts=@(
	"cfgx")
foreach ($ext in $exts){
	$extfile=$ext+"file"
	$dotext="." + $ext
	cmd /c assoc $dotext=$extfile
	cmd /c "ftype $extfile=""C:\Program Files (x86)\SCM Group\Maestro\ConfigurationManager.exe"" ""%1"""
}

# Messages below are hidden because ROGIERS WIZARD will hide cmd interface, just for testing purposes;
echo "Bestandsextenties zijn gewijzigd."
echo "Controleer of bestanden onmiddellijk kunnen aangeklikt worden..."

# ------------------------------------------------------------------
# see also:
# * https://superuser.com/q/406985/8271
# * https://gist.github.com/timabell/608fb680bfc920f372ac
# https://gist.github.com/timabell/bc90e0808ec1cda173ca09225a16e194
# MIT license
