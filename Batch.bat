@echo off
:: Set the root folder name
set "root_folder=braking_simulation_project"

:: Create the main project folder
mkdir %root_folder%

:: Create subfolders
mkdir %root_folder%\src
mkdir %root_folder%\src\utility
mkdir %root_folder%\data

:: Create placeholder files
echo %~nx0 created this placeholder. > %root_folder%\src\main_simulation.m
echo %~nx0 created this placeholder. > %root_folder%\src\sensor_data_generator.m
echo %~nx0 created this placeholder. > %root_folder%\src\braking_calculations.m
echo %~nx0 created this placeholder. > %root_folder%\src\visualization.m
echo %~nx0 created this placeholder. > %root_folder%\src\utility\constants.m
echo %~nx0 created this placeholder. > %root_folder%\src\utility\helper_functions.m
echo %~nx0 created this placeholder. > %root_folder%\data\generated_data.mat
echo %~nx0 created this placeholder. > %root_folder%\data\results.mat
echo %~nx0 created this placeholder. > %root_folder%\README.md

:: Notify the user
echo Folder structure created successfully!
echo Navigate to the folder: %cd%\%root_folder%
pause