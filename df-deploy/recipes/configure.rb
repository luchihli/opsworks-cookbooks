script "df-deploy" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    echo "#-#-#-#-#-# luchihli Deploy"
    id > deploy.txt
    env > deloy.txt

    #cd /home
    #tar -zxf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz 
    #chown -R deploy /home/deploy
    

  EOH
end


