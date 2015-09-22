script "install_rbenv" do
  interpreter "bash"
  user "deploy"
  cwd "/tmp"
  code <<-EOH
    id > 1.txt
    date >> 1.txt
    echo "Hello" >> 1.txt

    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    mkdir -p /home/deploy/.rbenv/plugins
    cd !$
    git clone git://github.com/sstephenson/ruby-build.git
    git clone git://github.com/jamis/rbenv-gemset.git
    git clone git://github.com/dcarley/rbenv-sudo.git

    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/deploy/.bashrc    
    echo 'eval "$(rbenv init -)"' >> /home/deploy/.bashrc
  EOH
end


script "install_ruby_packages" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    id > 2.txt
    date >> 2.txt
    echo "Hello" >> 2.txt
 
    yum install -y libffi-devel libxml2 libxml2-devel libxslt libxslt-devel  readline-devel

  EOH
end


script "install_ruby_221" do
  interpreter "bash"
  user "deploy"
  cwd "/tmp"
  code <<-EOH
    id > 3.txt
    date >> 3.txt
    echo "Hello" >> 3.txt

  #rbenv install 2.2.1 
  rbenv global 2.2.1
  ruby --version >> 3.txt

  EOH
end

