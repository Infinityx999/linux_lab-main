**Tutorial on essential commands for navigating and managing files with the help of the terminal**

## 1️⃣. Navigating Commands ✅ 
## 'pwd'- Print Working Directory
Shows the current location in filesystem.
```bash
>>pwd
```
Output Example:
```bash
/home/nidhish/Downloads/linux_lab-main
```
![images](./images/pwd.png)
## ls – List Directory Contents
Lists files and folders in the current directory.
```bash
ls
```


ls -l >> Detailed list (permissions, size, date)

ls -a >>Shows hidden files (those starting with .)

ls -la >>Combined

## 'cd'- Change Directory 
Moves into a directory 
```bash
>>cd folder_name
```
Examples:
```bash
cd Documents    #Go to documents
cd ..           #Go up one level 
cd /            #Go to root 
cd ~            #Go to home directory 
```


## 2️⃣. File and Directory Management ❗
## 'mkdir'- Make Directory 
Create a new folder
```bash
mkdir new_folder
```


## Touch - Create file
Creates an empty file 
```bash
touch file.txt
```

## CP - Copy Files or Directories 
```bash
cp source.txt destination.txt
```
Copy Folder
```bash
cp -r folder1 folder2
```


## MV- Move or Rename files
```bash
mv oldname.txt newname.txt
```
```bash
mv file.txt ~/Documents/    #Move file
```


## RM- Remove Files 
```bash
rm file.txt          #Delete File
rm -r folder_name    #Delete Folder (recursively)
```
Be careful as there is no going back 


## 3️⃣. File Viewing and Editing 🔵
## cat - View File contents
Displays content in terminal
```bash
cat file.txt
```

## nano- Edit Files in Terminal
A basic terminal based text-editor
```bash
nano file.txt
```
>>Use arrows to move

>>CTRL + O to save 

>>CTRL + X to exit


## clear - Clears The Terminal
```bash
clear
```

Shortcut: ctrl +L



## 4️⃣.System Commands 📶 
## echo-Print Text
Useful for debugging or scripting
```bash
echo "Hello World"
```

## whoami - Show Current User
```bash
whoami
```

## man- Manual for any Command
```bash
man ls
```
Use 'q' to quit the manual


## 5️⃣. Searching and Finding 🔍
## Find- Locate files 
```bash
find . -name "*.txt"
```
Finds all '.txt' files in current folder and subfolders 


## Grep - Search Inside Files
```bash
grep "hello" file.txt
```
Searches for the word 'hello' in 'file.txt'


## 6️⃣. Helpful Shortcuts

| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `Tab`      | Auto-complete files/folders |
| `↑ / ↓`    | Browse command history      |
| `CTRL + C` | Stop a running command      |
| `CTRL + L` | Clear screen                |


## 7️⃣. Bonus: Chaining Commands 
* **Run multiple commands**:
```bash
mkdir test && cd test && touch hello.txt
```
* **Run only if previous command succeeds**: `&&`
* **Run regardless of success**: `;`

---


 




