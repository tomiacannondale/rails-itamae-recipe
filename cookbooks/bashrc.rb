file "#{node[:bashrc][:path]}" do
  not_if "grep -e 'RBENV_ROOT' #{node[:bashrc][:path]}"
  action :edit
  block do |content|
    content << <<EOS
export RBENV_ROOT=$HOME/.rbenv
export PATH="${RBENV_ROOT}/bin:${PATH}"
eval "$(rbenv init -)"
export NODENV_ROOT=$HOME/.nodenv
export PATH="${NODENV_ROOT}/bin:${PATH}"
eval "$(nodenv init -)"
EOS
  end
end
