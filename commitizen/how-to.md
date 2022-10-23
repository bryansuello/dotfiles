Conventional commit messages as a global utility
Install commitizen globally, if you have not already.

npm install -g commitizen
Install your preferred commitizen adapter globally (for example cz-conventional-changelog).

npm install -g cz-conventional-changelog
Create a .czrc file in your home directory, with path referring to the preferred, globally-installed, commitizen adapter

echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
You are all set! Now cd into any git repository and use git cz instead of git commit, and you will find the commitizen prompt.

Pro tip: You can use all the git commit options with git cz. For example: git cz -a.

If your repository is a Node.js project, making it Commitizen friendly is super easy.

If your repository is already Commitizen friendly, the local commitizen adapter will be used, instead of globally installed one.
