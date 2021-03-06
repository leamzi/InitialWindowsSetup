# Instalation for Windows

## Download the necessary files

Download and Copy The *Windows* folder on to your Pc (Remember where you place it)

## Setup the environment

This windows scripts are ment to be executed in a **_PowerShell_** environment, so to do that lets open **_PowerShell_** in our computer. 

We need to run _PowerShell_ as **administrator**, just right click the PowerShell icon and select the option **Run as administrator**

## Moving into the directory you copy your file.

Once PowerShell is opened you should see the directory power shell is currently in. 

Most of the times this will be something like this:

>`C:\WINDOWS\system32>`

So to move forward with the installation we need to move ourselves into the directory we copied the "Windows" folder that we previously download.

We can move using the comand `cd` and the directory that we wanna move in

### Locating your user folder

Let's start with moving into the user folder:

> `cd \users`

If you type this on to _PowerShell_ terminal (or just copy paste it) and hit enter, you should see that your direction changed from 
> `C:\WINDOWS\system32>` 

 to 
>`C:\users>`

That means that we are currently in the **Windows Users** folder, in which we can se the users that are in this computer.

To check that we can run the `ls` comand on the terminal. We should see something like this

``` 
Directory: C:\users

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/16/2020   7:47 PM                SomeUser
d-r---        10/15/2020   4:07 PM                Public 
```

As you can see, we have **two** folders in here. We have the **Public** user (a public folder that Windows always create) and we have a user named **SomeUser**. 

### Locating your Windows setup folder

Now we want to move to your user folder. So to do that we just use the `cd` command again but this time we will use the *user name* 

In our case this would be something like this:

> `cd SomeUser`

Once that is done you should be on the root of that user:

> `C:\users\SomeUser>`

If we _list_ for the folders in here we should see some familiar folders, just type `ls` and hit enter:

```
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/15/2020   4:07 PM                3D Objects
d-r---        10/15/2020   4:07 PM                Contacts
d-r---        10/15/2020   9:54 PM                Desktop
d-r---        10/16/2020   7:53 PM                Documents
d-r---        10/15/2020  11:03 PM                Downloads
d-r---        10/15/2020   4:07 PM                Favorites
d-r---        10/15/2020   4:07 PM                Links
d-r---        10/15/2020   4:07 PM                Music
dar---        10/15/2020   4:14 PM                OneDrive
d-r---        10/15/2020   4:10 PM                Pictures
d-r---        10/15/2020   4:07 PM                Saved Games
d-r---        10/15/2020   4:09 PM                Searches
d-r---        10/15/2020  11:31 PM                Videos
```

Now we just neet to move on to the location were we downloaded and copied our **Windows** folder. 

In our case it will be on our **Download** folder

>`cd Downloads\InitialWindowsSetup\Windows`

Once you are in the correct folder, type the list command (`ls`) and hit enter, and you should see this files:

```
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/17/2020   9:41 PM            990 ChocoPackages.ps1
-a----        10/16/2020   7:51 PM            804 Initialize.ps1
-a----        10/16/2020   7:51 PM           1110 InstallChocolatey.ps1
```

## Run Scripts

Congrats, you made it this far (~‾▿‾)~

For the next step we will run the script, but to do that, we need to have permission to run it.

To do that just copy and paste this code:

>`Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`

You should see that we get this message:

```
Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the security risks described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change
the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"):
```

Just type `y` or `yes` and you should be good to go. *(If you not see this, maybe is cause you did not open PowerShell terminal on administrator mode)*

So now that we have permission, let's run the only script we need to Run which is the **Initialize.ps1** file.

To do that let's just invoke the script like this:

> `.\Initialize.ps1`

And that is it. With this is should be done. 

So what this script does?

This script install the [Chocolatey Package Manager](https://chocolatey.org/) for windows.

The package that are going to be installed are in the `ChocoPackages.ps1` file. Feel free to open it and see the files.

You can add or remove packages from it if you like. Just remember to add the `-y` at the end of every package, this is only to accept the package script to run. Example:

> `choco install {package-name} -y`

Have Fun (~‾▿‾)~ !!!