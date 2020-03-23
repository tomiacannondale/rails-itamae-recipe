user_name = "tomiacannondale"
node.reverse_merge!(
  rbenv: { user: user_name },
  nodenv: { user: user_name, nodenv_root: "/home/#{user_name}/.nodenv" },
  bashrc: { path: "/home/#{user_name}/.bashrc" }
)

include_recipe "rbenv::user"
include_recipe "nodenv::user"
include_recipe "docker::install"
include_recipe "../cookbooks/bashrc"
include_recipe "../cookbooks/mysql"
include_recipe "../cookbooks/redis"
