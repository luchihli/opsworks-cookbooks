script "install_rbenv" do
  interpreter "bash"
  user "deploy"
  cwd "/tmp"
  code <<-EOH
    id > 1.txt
    date >> 1.txt
    echo "Hello" >> 1.txt
    yum install -y libffi-devel libxml2 libxml2-devel libxslt libxslt-devel  readline-devel
    cd /home
    tar -zxvf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz
  EOH
end


