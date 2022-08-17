# Simple Fortune Cookie

A project in Go for you to apply all the awesome things
    you've learned at the academy!

The project can be run by 1-3 people in a team.

## Fork the Project

Fork the project to get your own private working copy:

![Forking the Project](./images/forking-project.png)

## Configuring the Project

Enable issues on the repository and invite the team as collaborators,
    so you can make changes:

![Configuring the Project](./images/settings-project.png)

When you have a fork that your teammates can access,
please proceed to the [01-introduction](./01-introduction.md).

## Folders

- `backend`: a Go server that serves api requests
- `frontend`: an HTTP webserver (in Go) that you can view in your browser

## Eficode Notes

This repository is entirely generated.
Changes will be overwritten by subsequent releases,
    from the main repository.

In case of an unfortunate push,
    simply make a new release from the main repository,
    and squash the commits on this one.
    
## Steps taken

### Setup of Repository

- We forked the project
- We added contributors
- We renamed main to trunk to indicate we will work with trunk-based development
- We set up branch protection rules for the trunk branch
    - Require PR for merging by 2 others
    - Dismiss stale PRs when new commits are pushed
    - Require status checks to pass before merging (remember to add these)
    - Require branches to be up to date before merging
    - Require conversation resolution before merging
    - Require linear history
    - Include administrators
- Changed settings for PRS
    - Enabled issues on the repository
    - Restrict merging to only allow squash merging and rebase merging
    - Always suggest updating pull request branches
    - Automatically delete head branches
- Created a Project with the Team Backlog template
    - Removed Backlog and Ready swimlane 
    - Configured Workflows so:
        - New issues are added to the backlog
        - Reopened issues are moved to In Progress
        - Closed issues are moved to Done
        - PRs with requested changes are moved to In Progress
        - Merged PRs are moved to done
- Created Issues for all tasks


