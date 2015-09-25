script "df-configure" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    echo "#-#-#-#-#-# luchihli Configure"
    id > configure.txt
    env > configure.txt

    #cd /home
    #tar -zxf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz 
    #chown -R deploy /home/deploy
    

  EOH
end


