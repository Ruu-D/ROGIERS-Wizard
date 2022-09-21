# Script to change the current wallpaper to ROGIERS version.

# *********************************************************************************************************************


#Get current screen resolution
$CurrentRes = Get-WmiObject -Class win32_videocontroller 
$width = $CurrentRes.currentHorizontalResolution
$height = $CurrentRes.currentVerticalResolution

$Resolution = "$width" + "x" + "$height"

#Defining a parameter for the image paths
$WallpaperFormatWidescreen = "C:\ROGIERS\INSTALL\ROGIERS Wizard\FILES\Rogiers Wallpapers\ROGIERS-WALLPAPER-FOM-2022.jpg"
$WallpaperFormatSquare = "C:\ROGIERS\INSTALL\ROGIERS Wizard\FILES\Rogiers Wallpapers\ROGIERS-WALLPAPER-FOM-SQUARE-2022.jpg"

#This is the standard wallpaper for the EYE-M screen format [1920x1080] - if other formats are not found, this one will be used.
$WallpaperPath = $WallpaperFormatWidescreen

switch($Resolution)
{
("800x600")
        {$WallpaperPath = $WallpaperFormatSquare}
("1024x768")
        {$WallpaperPath = $WallpaperFormatSquare}
("1280x768")
        {$WallpaperPath = $WallpaperFormatWidescreen}
("1280x960")
        {$WallpaperPath = $WallpaperFormatSquare}
("1280x1024")
        {$WallpaperPath = $WallpaperFormatSquare}
("1360x768")
        {$WallpaperPath = $WallpaperFormatWidescreen}
("1366x768")
        {$WallpaperPath = $WallpaperFormatWidescreen}
("1440x900")
        {$WallpaperPath = $WallpaperFormatWidescreen}
("1600x1200")
        {$WallpaperPath = $WallpaperFormatSquare}
("1920x1080")
        {$WallpaperPath = $WallpaperFormatWidescreen}
("1920x1200")
        {$WallpaperPath = $WallpaperFormatWidescreen}
}

#Update registry value for the correct wallpaper
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name "Wallpaper" -Value $Wallpaperpath

#Function to set the wallpaper and refresh it
Add-Type @"
using System;
using System.Runtime.InteropServices;
using Microsoft.Win32;
namespace Wallpaper
{
   public enum Style : int
   {
       Tile, Center, Stretch, NoChange
   }
   public class Setter {
      public const int SetDesktopWallpaper = 20;
      public const int UpdateIniFile = 0x01;
      public const int SendWinIniChange = 0x02;
      [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
      private static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
      public static void SetWallpaper ( string path, Wallpaper.Style style ) {
         SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
         RegistryKey key = Registry.CurrentUser.OpenSubKey("Control Panel\\Desktop", true);
         switch( style )
         {
            case Style.Stretch :
               key.SetValue(@"WallpaperStyle", "2") ; 
               key.SetValue(@"TileWallpaper", "0") ;
               break;
            case Style.Center :
               key.SetValue(@"WallpaperStyle", "1") ; 
               key.SetValue(@"TileWallpaper", "0") ; 
               break;
            case Style.Tile :
               key.SetValue(@"WallpaperStyle", "1") ; 
               key.SetValue(@"TileWallpaper", "1") ;
               break;
            case Style.NoChange :
               break;
         }
         key.Close();
      }
   }
}
"@

#Set Wallpaper and stretch!
[Wallpaper.Setter]::SetWallpaper( $WallpaperPath, 2 )