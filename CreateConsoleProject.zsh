#!/usr/bin/env zsh

# This script is maintained at 
# https://github.com/Software101DotNet/CreateDotNetProject
# This script is licensed under the MIT License. See the LICENSE file for details.

# Check if the ProjectName parameter is provided
if [ -z "$1" ] && [ -z "$2" ]; then
  echo -e "\e[31;3mPlease provide a name for the project as the first argument and optionally a different name for the folder as the second argument."
  exit 1
elif [ -z "$2" ] ; then 
  # if the second argument is not provided, use the first argument for both the project and folder names.
  ProjectName="$1"
  FolderName="$1"
else
  # Extract the project and folder names from the given arguments
  ProjectName="$1"
  FolderName="$2"
fi

echo "Project name: $ProjectName"
echo "Folder name: $FolderName"

# make a new folder and change the working folder to it.
echo -e "\e[33;4mMake a new folder and change the working folder to it.\e[0m"
mkdir "$FolderName"
cd "$FolderName"

# Initialize a git repo.
echo -e "\e[33;4mInitializing a git repo for the project.\e[0m"
git init

# Create a .gitignore file.
echo -e "\e[33;4mCreating a .gitignore file.\e[0m"
dotnet new gitignore

# Create a .NET C# console project. 
echo -e "\e[33;4mCreating a .NET C# console project.\e[0m"
dotnet new console --name "$ProjectName" --framework net7.0 --langVersion 11 --use-program-main

# Create a .NET C# unit test project.
echo -e "\e[33;4mCreating a .NET C# unit test project.\e[0m"
dotnet new xunit --name xUnitTests   

# Create a solution file for use with Visual Studio and add the dotnet projects to it.
echo -e "\e[33;4mCreating a solution file for use with Visual Studio and add the dotnet projects to it.\e[0m"
dotnet new sln --name "$ProjectName"
dotnet sln "$ProjectName.sln" add "$ProjectName/$ProjectName.csproj"
dotnet sln "$ProjectName.sln" add "xUnitTests/xUnitTests.csproj"
dotnet sln "$ProjectName.sln" list

# download the readme.md template for the new project
echo -e "\e[33;4mDownload the readme.md template for the new project.\e[0m"
curl -o readme.md -LJO https://raw.githubusercontent.com/Software101DotNet/CreateDotNetProject/master/readme-template.md

# download the license file for the new project
echo -e "\e[33;4mDownload the license file for the new project.\e[0m"
curl -o license.txt -LJO https://raw.githubusercontent.com/Software101DotNet/CreateDotNetProject/master/license.txt

# Add the files to the git repo.
echo -e "\e[33;4mAdd the files to the git repo.\e[0m"
git add .
git commit -m "Project files created by CreateConsoleProject.zsh shell script."

# verify compiling the application.
echo -e "\e[33;4mCompile the application.\e[0m"
dotnet build "$ProjectName/$ProjectName.csproj" --verbosity minimal

# open the project folder in VS Code.
cd ..
code "$FolderName"

exit 0
