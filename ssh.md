# File transfer from one linux machine to another using SSH 
SSH is a netwok protocol that provides a secure connection between two devices over the same network

# 1 Installing and starting the SSH server

```bash
sudo apt update
sudo apt install openssh-server
sudo systemctl enable --now ssh
```

- Find the local ip of the machine 

```bash
hostname -I    # prints local IPs, e.g. 192.168.1.23
# or
ip addr show
```

# 2 Removing firewall restrictions ( If any)

```bash
sudo ufw allow ssh
sudo ufw enable
```

# 3 Setting up SSH key authentication 

- This creates a key which you have to later use on the other machine 


```bash
# create a key (skip if you already have ~/.ssh/id_ed25519)
ssh-keygen -t ed25519 -C "your@address"    # press Enter to accept defaults

# copy your public key to friend's machine
ssh-copy-id user@192.168.1.23
# or, if ssh-copy-id not available:
cat ~/.ssh/id_ed25519.pub | ssh user@192.168.1.23 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys'
```

# 4 Basic connection 

```bash
ssh user@192.168.1.23
# if their SSH listens on a different port, e.g. 2222:
ssh -p 2222 user@192.168.1.23
```

# 5 Copy files over SSH

- You can now transfer files from one machine to another using this command:

```bash
scp [options] /path/to/localfile username@remote_host:/path/to/remote/directory/
```


