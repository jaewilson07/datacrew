

Intro
-------

Domo supports the creation of Git repositories within the Jupyter Workspaces interface, which enables you to repeatedly push updates to your selected GitHub repository using standard Git operations.


 For more information about Jupyer Workspaces, see our

Jupyter Workspaces User Guide

. For more information about GitHub, see their

documentation

.


 Jupyter Workspaces is a premium Domo feature. Contact your Customer Success Manager (CSM) or Account Executive (AE) to get access to it. For support, contact

Domo Support

.


 This article describes how to use Jupyter Workspaces with GitHub in the following topics:

 Create repositories in a Jupyter Workspace and GitHub
* Push updates from Jupyter to GitHub

Create Repositories in a Jupyter Workspace and GitHub
---------------------------------------------------------


1. Open (run) a Jupyter workspace that you want to sync with GitHub. To learn how to enable Jupyter and create a workspace, see our

Jupyter Workspaces User Guide

.
2. Create an SSH key in the Jupyter workspace by following these steps:
	1. In your Jupyter workspace, open a new terminal window by selecting
	 **File**
	 >
	 **New**
	 >
	 **Terminal**
	 .
	2. Set a global user email by entering the following in the terminal window:

```
	git config --global user.email "<*your\_email@example.com*>"
	```

 Example:

```
	git config --global user.email "jane.doe@domo.com"
	```
	3. Set a global username by entering the following in the terminal:

```
	git config --global user.name "<*Your Name*>"
	```

 Example:

```
	git config --global user.name "Jane Doe"

```
	4. Create an SSH key by entering the following in the terminal:

```
	ssh-keygen -t ed25519 -C "<*your\_email@example.com*>"
	```

 Example:

```
	ssh-keygen -t ed25519 -C “jane.doe@domo.com”
	```


	 This command creates two files. The 'id\_ed25519.pub' file contains your public SSH key.
	5. When you're prompted to "Enter a file in which to save the key", you can specify a file or select
	 **Enter**
	 to accept the default file location.
	6. When you're prompted to "Enter passphrase", either enter your selected passphrase or press
	 **Enter**
	 to add no passphrase.
3. Copy your public SSH key to your clipboard by following these steps:
	1. Go to the directory folder where you saved your SSH key (see

 step 2.e

 above). If you saved your key in the default file location, you can go to that location by entering the following in the terminal window:

```
	cd .ssh

```
	2. Your public key is saved in the id\_ed25519.pub file. To open the id\_ed25519.pub file and see your key, enter the following:

```
	cat id_ed25519.pub

```


	 Your public key should be a string of text/numbers that ends with the email address you specified in step 2.d above. An example public key displays below. Copy your public key to your clipboard.


	 Example public key:


	```
	ssh-ed25519 AAAAC3NzaC1l/gGtxSYwHQAK6f/YSopT8t42HAGcw0N jane.doe@domo.com
	```
4. Add your public SSH key to your GitHub by following the steps below:
	1. Follow this link to the

 GitHub website

 . (You need to be logged in to GitHub.)
	2. Select
	 **New SSH key**
	 .
	3. Enter a name for the SSH key in the
	 **Title**
	 field and paste your public key from step 3b above into the
	 **Key**
	 field.
	4. Select
	 **Add SSH key**
	 .
5. Create a repository in GitHub that you can push your Jupyter Workspace files to by following these steps:
	1. Follow this link to the

 GitHub website

 . (You need to be logged into GitHub.)
	2. Enter the information that GitHub requests to create a repository.
	3. You can find the SSH URL associated with this repository, which you need in a

 later step

 , by selecting
	 **SSH**
	 in the
	 **Quick setup**
	 section of the repository's landing page.
6. Create a Git repository in Jupyter Workspaces, and specify the remote repository in GitHub that you'd like to push to by following these steps:
	1. In the terminal window, go to the directory folder in Jupyter Workspaces where the file(s) that you want to push to GitHub are saved. If such files are saved in the
	 **Home**
	 directory, you can go to the Home directory by opening a new terminal window (
	 **File**
	 >
	 **New**
	 >
	 **Terminal**
	 ) or by entering the following in an existing terminal window:

```
	cd /home/domo

```


	 (Optional) To verify which directory you are currently in within the terminal window, enter:


	```
	pwd
	```


	 (Optional) To verify what files are in the directory, enter:


	```
	ls

```
	2. Create a new Git repository in the directory by entering the following:


	```
	git init

```
	3. Add the remote repository in GitHub that you want to push to by entering the following:


	```
	git remote add origin <*SSH\_URL*>
	```


	 <
	 *SSH URL>*
	 is the SSH URL associated with the GitHub repository that you want to push to.

 Step 5.c

 above outlines how to find the SSH URL. Example:


	```
	git remote add origin git@github.com:jane-doe/example_repo.git

```

Push Updates from Jupyter to GitHub
---------------------------------------


1. In the terminal window, go to the directory folder in Jupyter Workspaces where the file(s) that you want to push to GitHub are saved. If such files are saved in the
 **Home**
 directory, you can go to the Home directory by opening a new terminal window (
 **File**
 >
 **New**
 >
 **Terminal**
 ) or by entering the following in an existing terminal window:

``
cd /home/domo

``


 (Optional) To verify what directory you are currently in within the terminal window, enter:


```
pwd
```


 (Optional) To verify what files are in the directory, enter the following:


```
ls

``
2. Add the file that you want to push in the next commit by entering the following:

``
git add <*file name*>
```


 Example:


```
git add README.md
```
3. Commit by entering the following:

``
git commit -m "<*commit message>*"
```


 <
 *commit message*
 > is a short statement that describes what has changes since you last pushed.


 Example:


```
git commit -m “Added README file”

``
4. Create a branch named "main" in the Git repository by entering the following:


```
git branch -M main
```
5. Push the file to your GitHub repository by entering:

``
git push -u origin main
```


 If the following message "Are you sure you want to continue connecting (yes/no/[fingerprint])?" displays in the terminal window, enter


```
yes
```


 in the terminal window.


 Your file changes now display in your GitHub repository.


