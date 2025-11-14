# 🚀 Tutorial on Essential Linux Commands & Shell Scripting 

This markdown file introduces you to **Linux terminal commands** and **shell scripting basics**. Alongside explanations, you’ll find **sample outputs** so you know what to expect when you try them yourself.

---

## 1️⃣ Navigating Commands ✅

### `pwd` – Print Working Directory
Shows the current location in the filesystem.
```bash
pwd
```
**Output Example:**
```bash
/home/nidhish/Downloads/linux_lab-main
```

### `ls` – List Directory Contents
```bash
ls
```
**Output Example:**
```bash
documents  downloads  music  pictures
```

Variants:
- `ls -l` → Detailed list (permissions, size, date)
- `ls -a` → Show hidden files (those starting with .)
- `ls -la` → Combine detailed and hidden view

### `cd` – Change Directory
```bash
cd Documents   # go to Documents
cd ..          # go up one level
cd /           # go to root
cd ~           # go to home directory
```

**Output Example:**
```bash
/home/nidhish/Documents
```

---

## 2️⃣ File and Directory Management ❗

### `mkdir` – Make Directory
```bash
mkdir new_folder
```
**Output:** Creates an empty folder named `new_folder`.

### `touch` – Create File
```bash
touch file.txt
```
**Output:** An empty file `file.txt` appears.

### `cp` – Copy Files or Directories
```bash
cp source.txt destination.txt
```
```bash
cp -r folder1 folder2
```
**Output Example:**
```bash
# folder2 now contains all files from folder1
```

### `mv` – Move or Rename Files
```bash
mv oldname.txt newname.txt
```
```bash
mv file.txt ~/Documents/
```
**Output:** The file moves or renames successfully.

### `rm` – Remove Files
```bash
rm file.txt       # delete file
rm -r folder_name # delete folder recursively
```
⚠️ **Warning:** Permanent deletion!

---

## 3️⃣ File Viewing and Editing 🔵

### `cat` – View File Contents
```bash
cat file.txt
```
**Output Example:**
```bash
This is the content of file.txt
```

### `nano` – Edit Files in Terminal
```bash
nano file.txt
```
Use arrows to move. 
- `CTRL+O` → Save
- `CTRL+X` → Exit

### `clear` – Clears the Terminal
```bash
clear
```
Shortcut: `CTRL+L`

---

## 4️⃣ System Commands 📶

### `echo` – Print Text
```bash
echo "Hello World"
```
**Output:**
```bash
Hello World
```

### `whoami` – Show Current User
```bash
whoami
```
**Output Example:**
```bash
nidhish
```

### `man` – Manual for Any Command
```bash
man ls
```
Press `q` to quit.

---

## 5️⃣ Searching and Finding 🔍

### `find` – Locate Files
```bash
find . -name "*.txt"
```
**Output Example:**
```bash
./notes/file1.txt
./lab/file2.txt
```

### `grep` – Search Inside Files
```bash
grep "hello" file.txt
```
**Output Example:**
```bash
hello world, this is a test line
```

---

## 6️⃣ Helpful Shortcuts

| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `Tab`      | Auto-complete files/folders |
| `↑ / ↓`    | Browse command history      |
| `CTRL + C` | Stop a running command      |
| `CTRL + L` | Clear screen                |

---

## 7️⃣ Bonus: Chaining Commands

Run multiple commands in sequence:
```bash
mkdir test && cd test && touch hello.txt
```
- `&&` → Run only if previous succeeds
- `;` → Run regardless of success

---

# 🐚 Shell Scripting Basics

## What is a Shell Script?
- A **shell script** is a text file containing commands to be executed by the shell.
- Automates repetitive tasks.

---

## 2. Creating Your First Shell Script

1. Create a file:
   ```bash
   nano hello.sh
   ```

2. Add:
   ```bash
   #!/bin/bash
   # This is a simple shell script

   echo "Hello, World!"
   ```

3. Save and exit (`CTRL+O`, `CTRL+X`).

4. Make it executable:
   ```bash
   chmod +x hello.sh
   ```

5. Run it:
   ```bash
   ./hello.sh
   ```

**Output:**
```bash
Hello, World!
```

---

## 3. Variables in Shell

```bash
#!/bin/bash

name="Nidhish"
age=18

echo "My name is $name"
echo "I am $age years old"
```

**Output:**
```bash
My name is Nidhish
I am 18 years old
```

---

## 4. Taking User Input

```bash
#!/bin/bash

echo "Enter your name:"
read username

echo "Hello, $username! Welcome to shell scripting."
```

**Sample Run:**
```bash
Enter your name:
Nidhish
Hello, Nidhish! Welcome to shell scripting.
```

---

## 5. Conditional Statements (if-else)

```bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ]
then
    echo "The number is greater than 10"
else
    echo "The number is 10 or smaller"
fi
```

**Sample Run:**
```bash
Enter a number:
12
The number is greater than 10
```

---



## EXTRA QUESTIONS
## 1) What is the difference between chmod and chown?

## chmod - change mode:
- Used to change the permissions (read, write, execute) of a file or directory.
```bash
# chmod example
chmod 755 script.sh
```

## Chown- change owner;
- Used to change the owner or group of a file or directory.
```bash 
# chown example
sudo chown nidhish:developers script.sh
```


## 2) How do you check current directory and user?
## Display current directory;
- Use pwd to print the full path of the current working directory
```bash
pwd
```

## Display current user:
- Use whoami to print the current username:
```bash
whoami
```


