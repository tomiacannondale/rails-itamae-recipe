case node[:platform]
when 'redhat', 'fedora', 'amazon' # redhat includes CentOS
  if node[:platform_version].to_f >= 8.0
    package "mysql"
    package "mysql-devel"
  end
end
