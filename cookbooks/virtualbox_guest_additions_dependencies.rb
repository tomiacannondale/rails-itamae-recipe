# If you run on virtualbox, maybe you want to use shared folder(Guest additions).
# If you want to use Guest Additions of virtualbox, you add this cookbook in roles/server.rb.
# After running itamae(and mount Guest Additions cd), you run below commands on guest os.
#
# export KERN_DIR=/usr/src/kernels/$(uname -r)
# sudo mkdir /mnt/cdrom
# sudo mount -t iso9660 /dev/cdrom /mnt/cdrom
# cd /mnt/cdrom
# sudo sh VBoxLinuxAdditions.run
# sudo usermod -aG vboxsf $(whoami)
#
# And reboot guest os, then shared folder is mounted on `/media/sf_xxx` .

case node[:platform]
when 'redhat', 'fedora', 'amazon' # redhat includes CentOS
  package "epel-release"
  package "kernel-devel"
  package "kernel-headers"
  package "dkms"
end

package "bzip2"
package "perl"
package "make"
package "gcc"
