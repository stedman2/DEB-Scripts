# SSH Config Setup
# also will need to rm -rf /etc/ssh/sshd_config first?
rm -rf /etc/ssh/sshd_config

echo -e "#AutoGen on `date` by `whoami` Mod Nov 2012 sorta" >> /etc/ssh/sshd_config
echo "Your port number for SSH LOGIN - REMEMBER THIS!! IMPORTANT!"
read portn
echo "Login to SHH on port number: $portn "
echo "Port $portn" >> /etc/ssh/sshd_config
echo "Protocol 2" >> /etc/ssh/sshd_config
echo "Your Server I.P Address"
read ipaddy
echo "I.P Added"
echo "Your email address"
read emailaddy

echo "ListenAddress $ipaddy" >> /etc/ssh/sshd_config
echo "SyslogFacility AUTHPRIV" >> /etc/ssh/sshd_config
echo "LoginGraceTime 60" >> /etc/ssh/sshd_config
echo "MaxAuthTries 4" >> /etc/ssh/sshd_config
echo "MaxStartups 1" >> /etc/ssh/sshd_config
# echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
echo "PermitEmptyPasswords no" >> /etc/ssh/sshd_config
echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config
echo "GSSAPIAuthentication yes" >> /etc/ssh/sshd_config
echo "GSSAPICleanupCredentials yes" >> /etc/ssh/sshd_config
echo "UsePAM yes" >> /etc/ssh/sshd_config
echo "X11Forwarding no" >> /etc/ssh/sshd_config
echo "UseDNS yes" >> /etc/ssh/sshd_config
#echo "PermitRootLogin no" >> /etc/ssh/sshd_config
# new 
#echo "AllowUsers exampleuser exampleuser2" >> /etc/ssh/sshd_config
echo "SSH Setup Completed!"
#/etc/init.d/ssh restart
#service apache2 stop
# Message Of The Day - On login
echo "Welcome! :) " >> /etc/motd
