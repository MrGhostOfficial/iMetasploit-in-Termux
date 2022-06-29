#!/data/data/com.termux/files/usr/bin/bash
#Md.SomRaAt Hossain[Black Hacker]
#Bangladesh[NetHunter]
#-*-MyStyleColorCodeforScript-*-
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
green='\e[1;32m'
purple='\e[1;35m'
black='\e[1;30m'
blue='\e[1;34m'
cyan='\e[1;36m'
finished='\e[0m'
whitelite='\e[0;37m'
redlite='\e[0;31m'
yellowlite='\e[0;33m'
greenlite='\e[0;32m'
purplelite='\e[0;35m'
blacklite='\e[0;30m'
bluelite='\e[0;34m'
cyanlite='\e[0;36m'
bluemix='\e[1;34m \e[1;47m'
purplemix='\e[1;35m \e[1;47m'
greenmix='\e[1;32m \e[1;41m'
#×××××××××××××××××××××××××××××××××××:#
clear
pkg install nano figlet toilet -y
pkg install inxi neofetch screenfetch -y
clear
toilet -f smmono9 -F border i-MetAsploit
echo -e "
                
    SCRIPT BY |D|E|D|S|H|I|T| EDITED BY MrGHOST👻
              ${green}[ ${yellow}t.me/MrGhostOfficial ${green}]
"
echo -e "${whitelite}[${green}INFO${whitelite}] ${cyanlite}if you don't understand how to use it then \nFollow my Instruction in gitHub or see my tutorial😇${finished}"
echo -e ""
sleep 3
cd $HOME
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} rm -rf metasploit-framework ${redlite}2>${greenlite}.log.txt ${finished}"
sleep 3
rm -rf metasploit-framework 2>.log.txt
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} mkdir metasploit-framework ${redlite}2>${greenlite}.log.txt ${finished}"
sleep 3
mkdir metasploit-framework 2>.log.txt
#rm log.txt
sleep 3
echo -e "${bluelite}[${green}+${bluelite}] ${bluelite}Successful Done${greenlite}...${finished}"
echo -e ""
sleep 3
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} pkg installing update upgrade -y ${finished}"
pkg update;pkg upgrade
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} apt installing purge ruby -y \n        rm -rf PREFIX/lib/ruby ${finished}"
apt purge ruby -y
rm -rf $PREFIX/lib/ruby
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} pkg installing zip unzip openssl postgresql \nncurses-utils wget tar etc.. ${finished}"
pkg upgrade -y -o Dpkg::Options::="--force-confnew"
pkg install -y python autoconf bison clang coreutils curl findutils apr apr-util postgresql openssl readline libffi libgmp libpcap libsqlite libgrpc libtool libxml2 libxslt ncurses make ncurses-utils ncurses git wget unzip zip tar termux-tools termux-elf-cleaner pkg-config git ruby -o Dpkg::Options::="--force-confnew"
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} python3 installing --upgrade pip requests ${finished}"
python3 -m pip install --upgrade pip
python3 -m pip install requests
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} Fix ruby in framework ${finished}"
source <(curl -sL https://github.com/termux/termux-packages/files/2912002/fix-ruby-bigdecimal.sh.txt)
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} metasploit installing framework ${finished}"
echo -e ""
cd $HOME
git clone https://github.com/rapid7/metasploit-framework.git --depth=1
echo -e ""
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
# version 0.118
# root cause for this problem is missing net-smtp & mini_portile2 version

# edit: they added net-smtp in gemspec
# Warnings were fixed 

# looks like someone added this in gemspec 
# hereafter no need to add thus dependency :D
#export MSF_FIX="spec.add_runtime_dependency 'net-smtp'"
#sed -i "146i \  $MSF_FIX" metasploit-framework.gemspec
sed -i "277,\$ s/2.8.0/2.2.0/" Gemfile.lock
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} gemfile.lock gem install bundler ${finished}"
gem install bundler
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} gem install nokogiri actionpack etc.. ${finished}"
gem install nokogiri -v 1.8.0 -- --use-system-libraries
gem install actionpack
bundle update activesupport
bundle update --bundler
bundle install -j$(nproc --all)
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
	rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
	rm $PREFIX/bin/msfvenom
fi
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
termux-elf-cleaner /data/data/com.termux/files/usr/lib/ruby/gems/*/gems/pg-*/lib/pg_ext.so

sed -i '355 s/::Exception, //' msfvenom
sed -i '481, 483 {s/^/#/}' msfvenom
sed -Ei "s/(\^\\\c\s+)/(\^\\\C-\\\s)/" /data/data/com.termux/files/home/metasploit-framework/lib/msf/core/exploit/remote/vim_soap.rb
sed -i '86 {s/^/#/};96 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb
sed -i '442, 476 {s/^/#/};436, 438 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/logging-2.3.0/lib/logging/diagnostic_context.rb
ln -s $HOME/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/
echo -e ""
inxi
sleep 3
echo -e ""
echo -en "${redlite}[${yellow}+${redlite}] ${white}Press${green}ENTER ${yellow}button to fix${redlite}:> ${finished}"
read replyme
if [[ $replyme == "" ]]
then
echo -e "${redlite}[${yellow}+${redlite}] ${greenlite}Okay got it..."

echo -e "${redlite}[${yellow}+${redlite}] ${greenlite}Fixing metasploit..."
  sleep 3
echo -e "${redlite}[${yellow}+${redlite}]  ${greenlite}Fixing...."
  sleep 3
echo -e "${redlite}[${yellow}+${redlite}]  ${greenlite}Almost fixed...."
  sleep 3
sed -i '13,14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb;sed -i '15 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb;sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb;sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb;sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb
gem install lolcat
echo -e ""
else
echo -e "$replyme"
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>>${greenlite} Congratulations Metasploit-framework6\n       as been installed run ${redlite}(${yellowlite} msfconsole ${redlite}) ${finished}"
fi
