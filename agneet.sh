#!/bin/bash
1. Harshad number check
is_harshad() {
local num=$1 sum=0 temp=$num
while (( temp > 0 )); do
sum=$(( sum + temp % 10 ))
temp=$(( temp / 10 ))
done
if (( num % sum == 0 )); then echo "Harshad Number"; else echo "Not a Harshad
Number"; fi
}
is_harshad 14
2. Kaprekar number check
is_kaprekar() {
local num=$1 sq=$(( num * num )) str_sq="$sq" len=${#str_sq} left=${str_sq:0:${#str_sq}/
2} right=${str_sq:${#str_sq}/2}
if (( (left + right) == num )); then echo "Kaprekar Number"; else echo "Not a Kaprekar
Number"; fi
}
is_kaprekar 42
3.Generate a random number between 1-100
echo $(( RANDOM % 100 + 1 ))
4.Check if a year is leap year
read -p "Enter year: " year
(( year % 4 == 0 && year % 100 != 0 || year % 400 == 0 )) && echo "Leap Year" || echo
"Not a Leap Year"
5.Find factorial using a loop
fact=1; for ((i=1; i<=5; i++)); do fact=$((fact * i)); done
echo "Factorial: $fact”
6.Check if number is odd or even
read -p "Enter a number:" num
if [ $((num%2)) == 0 ]
then
echo "The number is even"
else
echo "The number is odd"
fi
7.Check if email id id valid or not
read -p "Enter an email ID: " id
if [[ $id =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
then
echo "This is a valid email ID!"
else
echo "This is not a valid email ID!"
fi
8. Multiplication table of a number
read -p "Enter a number: " num
for (( i=1; i<10; i++ ))
do
echo "$num x $i = $((num*i))"
done
9. Check if a number is palindrome
read -p "Enter number: " num
rev_num=$(echo "$num" | rev)
[[ "$num" == "$rev_num" ]] && echo "Palindrome" || echo "Not a Palindrome"
10.Prime number check
is_prime() {
local num=$1
if (( num < 2 )); then echo "Not Prime"; return; fi
for (( i=2; i*i<=num; i++ )); do
if (( num % i == 0 )); then echo "Not Prime"; return; fi
done
echo "Prime"
}
is_prime 21
10.Convert lowercase to uppercase
tr '[:lower:]' '[:upper:]' <<< “agneet"
11.Display calendar
cal
12.Monitor system logs
tail -f /var/log/syslog
13.Convert fahrenheit to celsius
Celsius () {
f=$1
c=$((($f-32)*5/9))
echo "Temperature in Celsius = $c°C"
}
read -p "Enter temperature in Fahrenheit:" f
Celsius $f
14.Display system processes
top
15. Check the System’s Memory Usage
mem=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')
echo "Current Memory Usage: $mem”
16.Loop Through Array Elements
arr=("agneet" "tejas" "ameya" "dewang")
for item in "${arr[@]}"; do
echo $item
done
17.Creating a new user
useradd agneet
18.Search for a Pattern Inside a File
read -p "Enter filename: " filename
read -p "Enter a pattern to search for: " pattern
grep -w -n $pattern $filename
if [ $? -eq 1 ]; then
echo "Pattern did not match."
fi
19. Rename a File
read -p "Enter the file name: " file
read -p "Enter new file name: " new_file
mv "$file" "$new_file"
20. Upgrade and clean the system
echo "Updating and Cleaning the System..."
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt clean
echo "System Upgrade and Cleaning Completed."
21. Add new user to sudo group
usermod -aG sudo agneet
22.Find IP address
hostname -I
23.Checking Network Connectivity
read -p "Enter a host address:" HOST
if ping -q -c 1 -W 1 $HOST >/dev/null; then
echo "Internet connection is up"
else
echo "Internet connection is down"
fi
24. Check number of CPU cores
nproc
25.Check battery status (for laptops)
acpi -b
26.Change file permissions
chmod 777 file1
27.Check internet speed
speedtest-cli
28.Reverse a string
read -p "Enter a string: " str
echo "$str" | rev
29. Fibonacci series
fibonacci() {
local n=$1 a=0 b=1
for (( i=0; i<n; i++ )); do
echo -n "$a "; t=$((a + b)); a=$b; b=$t
done
echo
}
fibonacci 7
30.Display the Top 10 CPU-Consuming Processes
echo "The current top 10 CPU-consuming processes: "
ps -eo pid,%cpu,args | sort -k 2 -r | head -n 11
31. Kill Processes of a Specific User
read -p "Enter username: " $user
sudo pkill -u $user
echo "All processes of user $user have been terminated.”
32.Check Operating System Information
os_name=$(uname -s)
os_release=$(uname -r)
os_version=$(cat /etc/*-release | grep VERSION_ID | cut -d '"' -f 2)
os_arch=$(uname -m)
echo "OS Name: $os_name"
echo "OS Release: $os_release"
echo "OS Version: $os_version"
echo "OS Architecture: $os_arch”
33.Stop a Running Process
read -p "Enter process name: " process
if pgrep $process > /dev/null
then
pkill $process
34.Check the Permissions of a File
read -p "Enter the file name: " file
if [ -f $file ]; then
if [ -r "$file" ]; then
echo "Readable"
fi
if [ -w "$file" ]; then
echo "Writable"
fi
if [ -x "$file" ]; then
echo "Executable"
fi
else
echo "Error! The file $file does not exist."
fi
35. Delete a Given File If It Exists
read -p "Enter the file name for deletion: " file
if [ -f $file ]
then
rm $file
echo "The file $file deleted successfully!"
else
echo "Error! The file $file does not exist."
fi
36.Check disk usage
df -h
37. Check CPU usage
top -b -n1 | grep “Cpu(s)"
38. Display last 10 commands
history | tail -10
39.Create a backup of a directory
tar -czvf backup.tar.gz agneet/
40.Compare the Contents of Two Given Files
read -p "Enter the 1st file name: " file1
read -p "Enter the 2nd file name: " file2
if [ ! -f $file1 ] || [ ! -f $file2 ]
then
echo "Error! One of the files does not exists."
exit 1
fi
if cmp -s "$file1" "$file2"
then
echo "The Files $file1 and $file2 are identical."
else
echo "The Files $file1 and $file2 are different."
fi
41.Change the File Owner
read -p "Enter the file name: " file
read -p "Enter file owner name: " owner
if [ -f $file ]; then
sudo chown $owner $file
echo "Changed file owner to $owner!"
else
echo "Error! The file $file does not exist."
fi
42.Check the Uptime
uptime | awk '{print $1,$2,$3}' | sed 's/,//'
echo "Uptime: $uptime"
43.Check last reboot
dmesg | grep -i “reboot"
44.Print current date
date
45.List down all the signals supported by your system.
$ kill -l
46.Setting password for new user
$ passwd agneet
Changing password for user agneet.
New UNIX password:
Retype new UNIX password:
passwd: all authentication tokens updated successfully.
47.To see what is currently mounted (available
for use) on your system
$ mount
48.Find length of a string
read -p "Enter string: " str
echo "Length: ${#str}"
49. Automating Network Configuration
echo "Enter network configuration variables:"
read -p "Enter an IP address: " ip_addr
read -p "Enter a subnet mask: " subnet_mask
read -p "Enter a Gateway address: " gateway
read -p "Enter a DNS address: " dns
sudo ifconfig eth0 $ip_addr netmask $subnet_mask up
if [ $? -eq 0 ]; then
sudo route add default gw $gateway
if [ $? -eq 0 ]; then
sudo echo "nameserver $dns" > /etc/resolv.conf
if [ $? -eq 0 ]; then
echo "Network configuration completed"
else
echo "Error while setting the DNS server."
fi
else
echo "Error while setting the default gateway."
fi
else
echo "Network Configuration Failed."
fi
50.Check a Remote Host for its Availability
read -p "Enter remote host IP address:" ip
ping -c 1 $ip
if [ $? -eq 0 ]
then
echo "Host is up!"
else
echo "Host is down!"
fi
