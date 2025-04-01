## TMUX:
ctrl x, c - to add a tab
ctrl x, number - to switch tabs

## WINDOWS:
alt + fn + 4 to alt + f4 (close window)

* install irfanview for images, vlc for videos. A world of difference in speeds compared to dfault Photos and Movies & TV.

## TERMINAL
* man softwareName - to read manual of a software or package 
    or softwareName --help  - can also work
* ls | less - to scroll up and down when you ls, pipe the output of ls to less, which allows you to scroll up and down using the arrow keys or the Page Up and Page Down keys.
    prss 'q' to quit less.
* ? - to search backwards, opposite of '/'
* fzf works, search inside ~ (the root), but gotta make sure the capitalization and spelling are correct for it to work properly

## LVIM
alt 1/2/3 - to open terminal inside nvim, alt 3 for a float terminal
gf - go to the definition of a function

Common Telescope Commands in LunarVim
LunarVim comes pre-configured with some useful keybindings for Telescope. Here are some of the most common ones:

    Find Files
        Command: :Telescope find_files
        Keybinding: <leader> f f (default leader key is space, so Space f f)

    Search Text in Files (Live Grep)
        Command: :Telescope live_grep
        Keybinding: <leader> f g

    Find Buffers
        Command: :Telescope buffers
        Keybinding: <leader> f b

    Find Help Tags
        Command: :Telescope help_tags
        Keybinding: <leader> f h

    Recent Files
        Command: :Telescope oldfiles
        Keybinding: <leader> f o

    Find Keymaps
        Command: :Telescope keymaps
        Keybinding: <leader> f k


### Top 50 Linux Commands You Must Know as a Regular User
ls - The most frequently used command in Linux to list directories
pwd - Print working directory command in Linux
cd - Linux command to navigate through directories
mkdir - Command used to create directories in Linux
mv - Move or rename files in Linux
cp - Similar usage as mv but for copying files in Linux
rm - Delete files or directories
touch - Create blank/empty files
ln - Create symbolic links (shortcuts) to other files
clear - Clear the terminal display
cat - Display file contents on the terminal
echo - Print any text that follows the command
less - Linux command to display paged outputs in the terminal
man - Access manual pages for all Linux commands
uname - Linux command to get basic information about the OS
whoami - Get the active username
tar - Command to extract and compress files in linux
grep - Search for a string within an output
head - Return the specified number of lines from the top
tail - Return the specified number of lines from the bottom
diff - Find the difference between two files
cmp - Allows you to check if two files are identical
comm - Combines the functionality of diff and cmp
sort - Linux command to sort the content of a file while outputting
export - Export environment variables in Linux
zip - Zip files in Linux
unzip - Unzip files in Linux
ssh - Secure Shell command in Linux
service - Linux command to start and stop services
ps - Display active processes
kill and killall - Kill active processes by process ID or name
df - Display disk filesystem information
mount - Mount file systems in Linux
chmod - Command to change file permissions
chown - Command for granting ownership of files or folders
ifconfig - Display network interfaces and IP addresses
traceroute - Trace all the network hops to reach the destination
wget - Direct download files from the internet
ufw - Firewall command
iptables - Base firewall for all other firewall utilities to interface with
apt, pacman, yum, rpm - Package managers depending on the distribution
sudo - Command to escalate privileges in Linux
cal - View a command-line calendar
alias - Create custom shortcuts for your regularly used commands
dd - Majorly used for creating bootable USB sticks
whereis - Locate the binary, source, and manual pages for a command
whatis - Find what a command is used for
top - View active processes live with their system usage
useradd and usermod - Add a new user or change existing user data
passwd - Create or update passwords for existing users


___

What Makes Monitoring System Resources in Linux Essential
Knowing how to monitor system resources in Linux is crucial for several reasons, particularly for system administrators, developers, and power users. Here are five key reasons why this skill is important:

Performance Optimization. By monitoring system resources, you can identify processes or applications that are consuming excessive resources, such as CPU, memory, or disk I/O. This allows you to make adjustments to optimize the performance of your system or applications.
Troubleshooting Issues. Understanding resource usage helps in diagnosing and resolving system issues. For instance, if a server is responding slowly, monitoring tools can help determine if it’s due to high CPU load, insufficient memory, or other resource constraints.
Capacity Planning. Regular monitoring provides data over time, which can be crucial for capacity planning. You can predict when you’ll need to upgrade hardware or scale your system based on trends in resource usage.
Security Monitoring. Monitoring tools can also help in identifying unusual activities that might indicate a security breach, such as unexpected spikes in network traffic or unusual processes consuming resources.
Now that we’ve established the importance of this skill, let’s move to the next section where we will explore how to monitor system resources in Linux using command-line tool.

Process to Monitor System Resources in Linux with Command Line Tools
Monitoring system resources in Linux using command line tools involves several steps with various commands. Here’s a guide in sentence form for each tool:

#1 Using top for Real-Time Monitoring
Open a terminal and enter the command below to view real-time system resource usage, including CPU, memory, and process information.

top
#2 Using htop for Enhanced Monitoring
To use the htop command, first install it using the command below:

sudo apt-get install htop
Then run it by typing “htop” in your terminal to see a user-friendly display of processes.

#3 Using vmstat for Virtual Memory Stats
Execute ‘vmstat’ followed by a time interval to monitor virtual memory statistics, including swap usage and system operations. For example:

vmstat 5
#4 Using iostat for CPU and I/O Statistics
Install the sysstat package with sudo apt-get install sysstat, use iostat along with an optional time interval to observe CPU statistics and I/O transfer rates.

iostat 5
#5 Using free to Check Memory Usage
Run the command free, and use -m or -g for outputs in MB or GB, respectively, to review your system’s memory usage.

free -h
#6 Using netstat for Network Statistics
Enter netstat to view network connections and routing tables, and add flags like -a or -t for more detailed information.

netstat -a
#7 Using df for Disk Space Usage
Type df in the terminal, and use the -h flag for a human-readable format, to examine disk space usage for each mounted filesystem.

df -h
#8 Using du for Directory Space Usage
Use du followed by a directory path, and add -h for human-readable output, to assess the space used by that directory and its sub-directories.

du -sh /path/to/directory
#9 Using mpstat for Multi-Processor Usage
Run mpstat followed by a time interval (e.g., mpstat 5) to analyze CPU usage for each processor.

mpstat -P ALL 5
#10 Using nmon—Overall System Monitoring
Interactive monitor that displays CPU, memory, network, and disk usage. Press various keys to view different statistics.

nmon
That’s it! Now, you’re equipped to monitor your system resources. Each tool offers unique insights into your Linux system’s performance and health. Regular monitoring with these tools can assist in proactive system management and troubleshooting.

Conclusion
Looking to deploy Linux in the cloud? With Gcore Cloud, you can choose from Basic VM, Virtual Instances, or VPS/VDS suitable for Linux:

Gcore Basic VM offers shared virtual machines from €3.2 per month
Virtual Instances are virtual machines with a variety of configurations and an application marketplace
Virtual Dedicated Servers provide outstanding speed of 200+ Mbps in 20+ global locations



___

𝐄𝐬𝐬𝐞𝐧𝐭𝐢𝐚𝐥 𝟓𝟎 𝐁𝐚𝐬𝐢𝐜 𝐋𝐢𝐧𝐮𝐱 𝐂𝐨𝐦𝐦𝐚𝐧𝐝𝐬: 𝐌𝐚𝐬𝐭𝐞𝐫 𝐘𝐨𝐮𝐫 𝐂𝐨𝐦𝐦𝐚𝐧𝐝 𝐋𝐢𝐧𝐞 𝐒𝐤𝐢𝐥𝐥𝐬 🐧

𝐩𝐰𝐝 - Print working directory. 📂
𝐥𝐬 - List directory contents. 📋
𝐜𝐝 - Change directory. 📁
𝐭𝐨𝐮𝐜𝐡 - To create a file without any content. 📄
𝐜𝐚𝐭 - Concatenate and display file content. 🐱
𝐜𝐩 - Copy files or directories. 📁📂
𝐦𝐯 - Move or rename files or directories. 🔄
𝐫𝐦 - Remove files or directories. 🗑️
𝐦𝐤𝐝𝐢𝐫 - Create a new directory. 📁
𝐫𝐦𝐝𝐢𝐫 - Remove an empty directory. 📁🗑️
𝐞𝐜𝐡𝐨 - Display a line of text or a variable value. 📢
𝐧𝐚𝐧𝐨 - A simple text editor. ✏️
𝐯𝐢 - A powerful text editor. ✒️
𝐜𝐡𝐦𝐨𝐝 - Change file or directory permissions. 🔐
𝐜𝐡𝐨𝐰𝐧 - Change file or directory owner and group. 👤
𝐟𝐢𝐧𝐝 - Search for files in a directory hierarchy. 🔍
𝐠𝐫𝐞𝐩 - Search text using patterns. 🔎
𝐦𝐚𝐧 - Display the manual for a command. 📖
𝐩𝐬 - Display information about running processes. 🔄
𝐤𝐢𝐥𝐥 - Terminate processes by PID. ⚰️
𝐭𝐨𝐩 - Display and update sorted information about processes. 📊
𝐝𝐟 - Report file system disk space usage. 💾
𝐝𝐮 - Estimate file space usage. 📏
𝐟𝐫𝐞𝐞 - Display memory usage. 🧠
𝐮𝐧𝐚𝐦𝐞 - Print system information. ℹ️
𝐮𝐩𝐭𝐢𝐦𝐞 - Tell how long the system has been running. ⏳
𝐰𝐡𝐨𝐚𝐦𝐢 - Display the current user. 👤
𝐬𝐮𝐝𝐨 - Execute a command as another user, typically the superuser. 🛡️
𝐚𝐩𝐭-𝐠𝐞𝐭 - Package handling utility for Debian-based distributions. 📦
𝐲𝐮𝐦 - Package manager for RPM-based distributions. 🍲
𝐭𝐚𝐫 - Archive files. 🗃️
𝐳𝐢𝐩 - Package and compress (archive) files. 📦
𝐮𝐧𝐳𝐢𝐩 - Extract compressed files. 📂
𝐰𝐠𝐞𝐭 - Retrieve files from the web. 🌐
𝐜𝐮𝐫𝐥 - Transfer data from or to a server. 🔄
𝐬𝐬𝐡 - OpenSSH client (remote login program). 🚪
𝐬𝐜𝐩 - Secure copy (remote file copy program). 🔒
𝐫𝐬𝐲𝐧𝐜 - Remote file and directory synchronization. 🔄
𝐡𝐨𝐬𝐭𝐧𝐚𝐦𝐞 - Show or set the system's host name. 🏠
𝐩𝐢𝐧𝐠 - Send ICMP ECHO_REQUEST to network hosts. 📶
𝐧𝐞𝐭𝐬𝐭𝐚𝐭 - Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. 🌐
𝐢𝐟𝐜𝐨𝐧𝐟𝐢𝐠 - Configure a network interface. 🌐
𝐢𝐩 - Show/manipulate routing, devices, policy routing, and tunnels. 🌐
𝐢𝐩𝐭𝐚𝐛𝐥𝐞𝐬 - Administration tool for IPv4 packet filtering and NAT. 🛡️
𝐬𝐲𝐬𝐭𝐞𝐦𝐜𝐭𝐥 - Control the systemd system and service manager. 🔄
𝐣𝐨𝐮𝐫𝐧𝐚𝐥𝐜𝐭𝐥 - Query and display messages from the journal. 📜
𝐜𝐫𝐨𝐧𝐭𝐚𝐛 - Schedule periodic background jobs. ⏰
𝐬𝐮𝐝𝐨 𝐬𝐮 - Allows us to switch to a different user and execute one or more commands in the shell without logging out from our current session. 🛡️
𝐦𝐨𝐮𝐧𝐭 - Mount a file system. 📂
𝐮𝐦𝐨𝐮𝐧𝐭 - Unmount a file system. 📂
