#!/bin/sh

echo "Setting up .ssh directory to login easily to csslab machines"

sshDIR="${HOME}/.ssh"

if [ -d $sshDIR ]
then
    echo "$sshDIR exists, delete it or move it to a safe location to continue"
    echo "to delete, use: rm -rf ${sshDIR}"
    echo "to move, use: mv $sshDIR ${sshDIR}-backup"
    exit
fi

mkdir $sshDIR
chmod 700 $sshDIR

# Generate SSH key with no passphrase
ssh-keygen -N "" -f $sshDIR/id_rsa
chmod 600 $sshDIR/id_rsa

# Add generated SSH key to trusted key list
cat $sshDIR/id_rsa.pub >> $sshDIR/authorized_keys
chmod 600 $sshDIR/authorized_keys

for N in {1..12};
do
    ssh-keyscan csslab${N}.uwb.edu >> ${sshDIR}/known_hosts;
    ssh-keyscan csslab${N} >> ${sshDIR}/known_hosts;
done;

chmod 600 $sshDIR/known_hosts
chmod 600 $sshDIR/id_rsa.pub

echo "You should now be able to login to another csslabmachine using"
echo "ssh csslabX  (where X is a number 1 to 12)"