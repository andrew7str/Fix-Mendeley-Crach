@echo off
setlocal

:: Menentukan lokasi folder Mendeley Ltd
set "target_folder=%LOCALAPPDATA%\Mendeley Ltd"

:: Memeriksa apakah folder ada
if not exist "%target_folder%" (
    echo Folder Mendeley Ltd tidak ditemukan di %target_folder%
    pause
    exit /b
)

:: Menghapus semua file dan subfolder di dalamnya
echo Menghapus isi folder Mendeley Ltd...
rmdir /s /q "%target_folder%"
mkdir "%target_folder%"

echo Isi folder Mendeley Ltd berhasil dihapus.
pause