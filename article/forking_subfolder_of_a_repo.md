# Question -- How can I use a subfolder of a repository in another repo (and still receive updates)

## Requirements:

1. I would like to take a subfolder of a larger rep and put it into a repository on my own GitHub account

2. I need to be able to keep it linked within the original repo to receive upstream commits, as my modifications will generally be theme based, rather than functionality.

## Response

The tool that we'll use for this job is [git subtree](https://www.atlassian.com/git/tutorials/git-subtree).

Although the project will start as a clone of the source project, the final result will have three branches of interest.

1. `main` - where YOUR modifications live
2. `upstream-repo` - the initial `main` of the source repo.
3. `upstream-filter` - the filtered content of interest for your project.

### Set up your new repository

Start by **cloning the source repository.** into your `future_project_name` folder.

```
git clone <source_repo> <future_project_name>
cd <future_project_name>
```

**rename main to upstream-repo` .** This allows us to have our own main branch, but retain a link to the original repo (and its git history).

```
git branch -m upstream-repo`
```

### Set up subtree split

Now use git subtree split to only include the part that you want. We'll make the **split off part a new branch called upstream-filter**.

```
git subtree split --prefix=<path to subfolder> -b upstream-filter
git checkout upstream-filter
```

This gives you a new upstream-filter branch that only contains the subfolder of interest, and with a filtered history that contains only the commits that modified files in that subfolder.

### Set up Remotes

Now, let's set up our remotes. Since you cloned your source project, \*\* rename the `origin` remote to `upstream`.

```
git remote rename origin upstream
```

**Create an empty repository on GitHub for your new project**.

To fill the repository on GitHub **add the repo as a remote, and push `upstream-filter branch` to it.**

```
git remote add origin <new_github_repo>
git fetch origin
git push -u origin upstream-filter
```

Finally, **make a new branch called main** that will contain your changes.

```
git checkout -b main
git push -u origin main
```

You may want to **change the default repo from `upstream-filter` to `main`**

You now have a "fork" of the source subdirectory.

## Making changes to your repositories

When you're dealing with your own local and remote repositories, you can use normal git commands.

> Make sure to do this on the main branch (or some other branch, if you'd like) but not on the `upstream-filter` branch, which should only ever contain commits from the upstream project.

```
git checkout main
<do stuff>
git add .
git commit -m "my message"
git push
```

## Receiving upstream commits

When you're dealing with the upstream repository, you will have to use a mix of git and git subtree commands. To get new filtered commits, we need to do it in three stages.

1. In the first stage, we'll **update upstream-repo` to the current version** of the source repository.

```
git checkout upstream-repo`
git pull
```

This should pull down new commits, if there are any.

2. Next, we will **update `upstream-filter` with the new filtered version of the commits using git subtree**

> Note that you want to run these commands while still on the upstream-repo` branch.

```
git subtree split --<path_to_subfolder> --onto upstream-filter -b upstream-filter
```

With upstream-filter now updated, you can **update your main branch** as you see fit (either by merging or rebasing).

```
git checkout main
git rebase upstream-filter
```

[original StackOverflow source](https://stackoverflow.com/questions/24577084/forking-a-sub-directory-of-a-repository-on-github-and-making-it-part-of-my-own-r)
