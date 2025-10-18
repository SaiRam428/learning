History of Git
Linus Torvalds is the creator and main developer behind Linux and Git. In April 2005 git development began Git. Torvalds referre to Git as "the stupid content tracker".

what is git?
git is a world most popular "version control system"

what is version control system (VCS)?
Version control system is a software that tracks and manages changes to files over time.
Version control systems generallyallow users to revisit earlier versions of files, compare changes between versions, undo changes and a lot more.
Git is just one of many VCS, other well-known once include Subversions, CVS and Mercurial.

How does git help us?
Track changes across mulitple files
Compare versions of a project
"Time travel" back to older versions
Revert to a previous version
Collaborate and share changes
Combine changes.

Difference between Git and Git hub ()?
Git:
Git is the version control systemthat runs locally on your machine. You don't need to register for an account.You don't need the internet to use it.you can use it without ever tuching git hub.

Github:
Github is a service that hosts Git repositories in the cloud and makes it easier to collaborate with other people. You do need to sign up for an account to use Github. It's an online place to sgare work that is done using Git.

Note: Git and Gihub are not same.


Installing Git (Terminal vs GUI).
Git is primarily a terminal tool
git was created as command-line tool. To use it, we run various git commands in a Unix shell. 

Popular Git GUI's include:
Github Desktop
SourceTree
Tower
GitKraken
Ungit

Pros
way lower barrier-of-entryfor beginners comparedto the command line.
Friendlier to use.can be a much better experience.
some people prefer the visual experience, even those who can use the command line

cons
at times, there is lots of "magic" involved. The inner-workings of git are obfuscated and hidden away with GUI's
Often leads to dependance oa particular piece of software.
hen things go seriously wrong, it can be very challenging to fix without the comand line.
The interface , buttons, and menusvery between different GUI's.

url:https://git-scm.com/downloads

Bash is command lineinterface that is widely used by developer. It is default shell for linux and mac. Git was designed to run on a unix-based interface like (bash)

windows comes with a different default command line interface called command prompt that is not Unix based.
Fortunately we have git bash, Git bash is a tool that emulates a bash expeience on windows machine.

Verifying Your Installation
After installing, check that Git works by opening your terminal (or Git Bash on Windows) and running:
git --version
If Git is installed, you will see something like git version X.Y.Z
If you see an error, try closing and reopening your terminal, or check that Git is in your PATH.


Git Config - W3Schools Heading
Configure Git
Now let Git know who you are.
This is important for version control systems, as each Git commit uses this information:

User Name
Your name will be attached to your commits. Set it with:
git config --global user.name "Your Name"
Email Address
Your email is also attached to your commits. Set it with:
git config --global user.email "you@example.com"

Change the user name and email to your own.
You will probably also want to use this when registering to GitHub later on.

Note: If you forget to set your name or email, Git will prompt you the first time you try to commit.
You can always change these settings later, and previous commits will keep the old info.
Use --global to set the value for every repository on your computer.
Use --local (the default) to set it only for the current repository.

