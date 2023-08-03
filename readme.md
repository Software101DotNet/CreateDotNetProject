[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Software101DotNet/CreateDotNetProject">
  </a>

<h3 align="center">Create Dot Net Console Project</h3>

  <p align="center">
      An ZSH Shell script to take the donkey work out of creating a Dot Net Console project 
      for VS Code on MacOs, Linux and windows or Visual Studio on Windows.
    <br />
    <br />
    <a href="https://github.com/Software101DotNet/CreateDotNetProject/issues">Request Feature</a>
    ·
    <a href="https://github.com/Software101DotNet/CreateDotNetProject/issues">Report Bug</a>
  </p>
</div>



<!-- ABOUT THE PROJECT -->
## About The Project

If you create a lot of cross platform CLI tools using Dot Net Core, you might find this project creation script a useful head start.

The script does the following:

1. Creates a root project folder
2. Creates a git repo for the project
3. Creates a *git ignore* file that is populated with all the recommended file that should be ignored by the repo for a Dot Net project.
4. Creates a Dot Net C# project in a subfolder
5. Creates a xUnitTest project in a separate subfolder
6. Creates a Visual Studio solution (*.sln*) file and adds the Dot Net project and the xUnitTest project to it. This is not needed if you are developing exclusively in VS Code, but it is useful if developing in Visual Studio on Windows.
7. Downloads an initial readme.md file and add it to the project folder.
8. Downloads a License file and add it to the project. This is a MIT license. If you want to use a GNU license, you can download it from https://choosealicense.com/licenses/gpl-3.0/#
9. Tests the initial project compiles and commits the initial files to the repo as the project starting point.

### Built With

* [VS Code]( https://code.visualstudio.com)

<!-- GETTING STARTED -->
## Getting Started

1. Clone the Create Dot Net Project [repo](https://github.com/Software101DotNet/CreateDotNetProject) and copy the CreateConsoleProject.zsh file to a place that is easy for you to run in a terminal, such as the root folder of your source code development folder.


### Prerequisites

The script assumes that the following are already installed in your developer environment, as it will use this tools to create and setup the Dot Net project ready for software development.
* [git](https://git-scm.com/downloads)
* [Dot Net Core](https://dotnet.microsoft.com/en-us/download/dotnet/7.0)
* ZSH shell
* [curl](https://curl.se) (This is already included in the ZSH shell if using MacOS Terminal.)


<!-- USAGE EXAMPLES -->
### Usage

1. Open a ZSH terminal and run the script giving the name of the project as the first parameter

    > ./CreateConsoleProject.zsh ***NewProjectName***

If you want the project root folder to be a different name than the name of the project (.csproj) then give the root folder name as a second parameter. If only one parameter name is given, then it is used as both the project and the root folder name.

    > ./CreateConsoleProject.zsh ***NewProjectName NewProjectRootFolderName*** 

### Known Issues

If you are using a powershell terminal to run the script, please be aware that Microsoft implemented a powershell version of curl that shares the same name but is not the same as the real curl command line tool. Windows has shipped with the real curl tool since the early 2000's. The script is intended to use the real curl tool, not Microsofts powershell version. See https://curl.se for more information. 

<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `license.txt` for more information.

<!-- CONTACT -->
## Contact

software101.net@gmail.com

Project Link: [https://github.com/Software101DotNet/CreateDotNetProject](https://github.com/Software101DotNet/CreateDotNetProject)


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [DotNet Documentation](https://learn.microsoft.com/en-us/dotnet)
* [Information on the different licenses, MIT, GNUv3, Apache v2 ...](https://choosealicense.com/licenses) 
* [curl command line tool](https://curl.se)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[issues-shield]: https://img.shields.io/github/issues/Software101DotNet/CreateDotNetProject.svg?style=for-the-badge
[issues-url]: https://github.com/Software101DotNet/CreateDotNetProject/issues

[license-shield]: https://img.shields.io/github/license/Software101DotNet/CreateDotNetProject.svg?style=for-the-badge
[license-url]: https://github.com/Software101DotNet/CreateDotNetProject/LICENSE.txt
