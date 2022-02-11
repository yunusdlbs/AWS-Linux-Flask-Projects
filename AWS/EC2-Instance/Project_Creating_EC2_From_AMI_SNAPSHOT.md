# Teamwork-Project-01 : Working with EC2 Snapshots, AMIs and Volumes

Purpose of the this project is to learn how to take a snapshot of EC2 instance, create an image and volume (root and additional volumes), creating another volume and instance from these snapshots, attaching and mounting new volume and instance together.

## Learning Outcomes

- At the end of the this hands-on training, students will be able to;

- take snapshots of EC2 instance and volume on AWS console.

- create images from EC2 instances on AWS console.

- understand of difference between the image and the snapshot.

- create different types of AMI.

- coping and sharing AMI

- formatting and resizing additional volume and mounting with root volume 

- attaching and mounting new volume and instance together

## Outline

Part 1 - Creating an EC2 instance (EC2A) with an additional volume (10 GiB)

Part 2 - Mounting the additional volume and Adding a test.txt file to additional volume

Part 4 - Taking snapshot of the EC2 (EC2A) with 2 volumes

Part 5 - Create an instance (EC2B) from root volume's snapshop of EC2A

Part 6 - Create an additional volume (10 GiB) from additional volume's snapshop of EC2A

Part 7 - Attach and Mount EC2B and additional volume (10 GiB)

## Part 1 - Creating an Image from the Snapshot of the Nginx Server and Launching a new Instance

-  Launch an instance name EC2_A with following configurations.
 

  a. Step 1: select Amazon Linux 2 AMI
  b. Step 2: select t2.micro
  c. Step 3: For further steps note your Subnet region 
  d. Step 4: Add New Volume; Volume Type: EBS, Size 10 GiB (Note; your device column name "/dev/sdb)
  e. Step 5: Tag; Name, EC2_A
  f. Step 6: Configure Security Group; Type: SHH Port: 22
  g. Step 7: Then Creat


## Part 2 - Mounting the additional volume

# check volumes which volumes attached to instance. 
lsblk
df -h
# check if the attached volume is already formatted or not and has data on it.
sudo file -s /dev/xvdb
# if not formatted, format the new volume
sudo mkfs -t ext4 /dev/xvdb
# check the format of the volume again after formatting
sudo file -s /dev/xvdb
# create a mounting point path for new volume
sudo mkdir /mnt/2nd-vol
# mount the new volume to the mounting point path
sudo mount /dev/xvdb /mnt/2nd-vol
# check if the attached volume is mounted to the mounting point path
lsblk
# show the available space, on the mounting point path
df -h
# check if there is data on it or not.
ls -lh /mnt/2nd-vol/
# Adding a test.txt file to additional volume
cd /mnt/2nd-vol
sudo vi test.txt
# write "Your_Name was Here.. For 2nd-vol"
# read and check "Your Name was Here.. For 2nd-vol" 
cat test.txt 

## Part 4 - Taking snapshot of the EC2 (EC2A) with 2 volumes

Go to Volume
Select Root Volume Action/creat SnapShot
  Tag: RootVolumeSnapshot

Select Additional Volume
Action/creat SnapShot
  Tag: AdditionalVolumeSnapshot

Go to SnapShot
Select "RootVolumeSnapshot" Creat SnapShot

Go to SnapShot
Select "AdditionalVolumeSnapshot" Creat Volume




## Part 5 - Create an instance (EC2B) from root volume's snapshop of EC2A (Enter your own ssh link...)

First enter the Snapsot part.
Choose root snapshot and create image from this snapsot. (Name it "Mynew_AMI")
After creating new image you can see in AMI's your "Mynew_AMI"
With choosing "Mynew_AMI" create new enstance and named it as "EC2B"


Connect to EC2B with SSH But use "ec2-user" instead of "root"
$ ssh -i "FirstKey.pem" root@ec2-3-94-86-243.compute-1.amazonaws.com 
$ ssh -i "FirstKey.pem" ec2-user@ec2-3-94-86-243.compute-1.amazonaws.com

lsblk
  You'll see there is only one root volume. Here, we'll attach our first Addional Volume to this machine.

## Part 6 - Create an additional volume (10 GiB) from additional volume's snapshop of EC2A

Enter snaphot part from your AWS Console.
Choose Additional snapshot and from Actions choose "Create Volume", follow the steps. Name it "Snapshot Volume". Be carefull while choosing zone. Here you can^t decrease the Volume amount (10GB), but increase if you want.
After Creating you'll see your new volume in Volumes.

## Part 7 - Attach and Mount EC2B and additional volume (10 GiB)
Enter Volumes from AWS Console.
Choose "Snapshot Volume" and from Actions Detach this volume to our new EC2B instance.
After that choose EC2B and Connet with ssh to this machine.

$ ssh -i "FirstKey.pem" ec2-user@ec1-1-1-1-1.compute-1.amazonaws.com

## check volumes which volumes attached to instance. 
lsblk    (You'll see new Volume is attached, it's path is described, but not mounted. Here no need to format this volume. Because we did that in the first EC2A.)
df -h

# mount the new volume to the mounting point path
sudo mount /dev/xvdb /mnt/2nd-vol

# check if the attached volume is mounted to the mounting point path
lsblk
# show the available space, on the mounting point path
df -h (After that we can enter into Addional Volume and see the txt file before we created.)

# Let's see the content of our Additonal Volume.
ls -l









