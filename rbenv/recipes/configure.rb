script "install_rbenv_ruby221" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    id > 1.txt
    date >> 1.txt
    echo "Hello" >> 1.txt
    yum install -y libffi-devel libxml2 libxml2-devel libxslt libxslt-devel  readline-devel
    cd /home
    tar -zxvf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz
    chown -R deploy /home/deploy
  EOH
end


