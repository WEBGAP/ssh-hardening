#!/bin/sh

sed -i 's/PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/#MaxAuthTries 6/MaxAuthTries 4/' /etc/ssh/sshd_config
sed -i 's/#MaxSessions 10/MaxSessions 10/' /etc/ssh/sshd_config
sed -i 's/#IgnoreRhosts yes/IgnoreRhosts yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/' /etc/ssh/sshd_config
sed -i 's/#AllowTcpForwarding yes/AllowTcpForwarding no/' /etc/ssh/sshd_config
sed -i 's/X11Forwarding yes/X11Forwarding no/' /etc/ssh/sshd_config
sed -i '27 i KexAlgorithms curve25519-sha256@libssh.org,ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group-exchange-sha256' /etc/ssh/sshd_config
sed -i '28 i Ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr' /etc/ssh/sshd_config
sed -i '29 i MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com' /etc/ssh/sshd_config