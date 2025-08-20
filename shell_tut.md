# Shell Turorial - File Permissions with 'chmod' and 'chown' 

## 1.Understanding file permissions in limux 
Each file/directory in linux has:
* **Owner** > The user who created the file
* **Group** > A group of users who may share access
* **Others** > Everyone else

### Permission Types
* **r** > Read (4 in numeric)
* **w** > Write (2 in numeric)
* **x** > Execute(1 in numeric)

### Permission layout 
Example from `ls -l`
```bash
dwxrwxrwx
```

Breakdown:

* `-` → Regular file (`d` = directory, `l` = symlink, etc.)
* `rwx` → Owner has read, write, execute
* `r-x` → Group has read, execute
* `r--` → Others have read only


## 2. `chmod`- Change File Permissions 
### Syntax
```bash
chmod [option] mode filename 
```
Modes can be set in numeric (octal) or symbolic form.


### (A) Numeric (Octal) Method 
Each permission is represented as a number
* read=4
* write=2
* execute =1

Add them up:
* `7 = rwx`
* `6 = rw-`
* `5 = r-x`
* `4 = r--`
* `0 = ---`


```bash
chmod 755 script.sh
```

Meaning:
* Owner: 7 > `rwx`
* Group: 5 > `r-x`
* Others: 5 > `r-x`

### (B) Symbolic Method 
Use `u`(user/owner) ,`g` (group) , `o`(others) , `a` (all). Operators:
* **`+`** > Add permission
* **`-`** > Remove permission 
* **`=`** > Assign exact permission 
```bash
chmod u+x script.sh     # Add execute for owner
chmod g-w notes.txt     # Remove write from group
chmod o=r file.txt      # Set others to read only
chmod a+r report.txt    # Everyone gets read access
```


### (C) Recursive changes
```bash
chmod -R 755 hello.sh
```


## 3, `chown` Change file ownership

### Syntax
```bash
chown [options] new_owner:new_group filename
```     

### Examples 
```bash
chown nidhish hello.sh         # Change owner
chown vnidhis:dev hello.sh     # Change owner and group
chown :dev file.txt            # Change only group to 'dev'
chown -R nidhish:dev hello.sh  # Recursive ownerchip change
```

## 4. Putting it all

### Example:
```bash
touch hello.sh
ls -l hello.sh
```

### Output
```bash
-rw-r--r-- 1 vibhu dev 0 Aug 19 12:00 project.sh
```

### Now
```bash
chmod 700 hello.sh           #Only owner has rwx
chmod  u+x,g-w hello.sh      #Add execute for user, remove write for group
chown root:admin hello.sh    # Change owner and group
```



## 🔹 5. Quick Reference Table

| Numeric | Permission | Meaning      |
| ------- | ---------- | ------------ |
| 0       | ---        | No access    |
| 1       | --x        | Execute only |
| 2       | -w-        | Write only   |
| 3       | -wx        | Write + Exec |
| 4       | r--        | Read only    |
| 5       | r-x        | Read + Exec  |
| 6       | rw-        | Read + Write |
| 7       | rwx        | Full access  |

---

✅ **Key Tip**: Use **numeric for quick settings** (e.g., 755, 644) and **symbolic for fine adjustments** (`u+x`, `g-w`).

---
