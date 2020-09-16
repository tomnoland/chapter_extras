# chapter_extras

---

## Table of Contents

[Git and Github](#git-and-github)

[Tools](#tools)

---

## Links

[Contributing doc](https://github.com/freeCodeCamp/chapter/blob/master/CONTRIBUTING.md)

[App](http://localhost:3000/)

[GraphQL Playground](http://localhost:5000/graphql)

---

# Chapter

---

## Push README

```bash
git add README.md; git commit -m "Changed README.md file"; git push origin master

```

---

# Clone

```bash
git clone https://github.com/tomnoland/Chapter.git

```

---

# Branch

```bash
git checkout -b fix/bbb

```

---

## Init Button Panel

```bash
java -jar Buttons.jar&

```

---

## Browser

```bash
/usr/bin/open -a /Applications/Google\ Chrome.app http://localhost:8080/

```

---

## Finder

```bash
/usr/bin/open -a /System/Library/CoreServices/Finder.app .

```


---

# Git and Github

---

## Clone project

```bash
cd ~
git clone https://github.com/tomnoland/chapter
cd chapter

```

```bash
cd ~
git clone https://github.com/tomnoland/chapter_extras
cd chapter_extras

```
---

## Hub - Create and Add Remote Repo

```bash
hub create
git remote add $PROJECT_NAME git@github.com:tomnoland/$PROJECT_NAME.git

```

---

## Push all

```bash
GIT_COMMIT_MESSAGE=

```

```bash
git add .
git commit -m $GIT_COMMIT_MESSAGE
git push origin master

```

---

## Pull

git pull origin master

---

## Tools


```bash
cd chapter

```

```bash
cd chapter_extras

```

```bash
/usr/bin/open -a /System/Library/CoreServices/Finder.app .

```

```bash
"/Applications/NetBeans/Apache NetBeans 11.1.app/Contents/Resources/NetBeans/bin/netbeans" README.md

```

---

## Sandbox


```bash
echo Buttons.jar > .gitignore
echo Project_Notes.txt-e >> .gitignore
echo ./resources/scripts/SetGithubDeployKey.sh >> .gitignore
echo .ssh >> .gitignore
git add .
git commit -m "And so, it begins."

```
---
