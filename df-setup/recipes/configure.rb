script "df-setup" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    echo "#-#-#-#-#-# luchihli Setup"
    id > setup.txt
    env > setup.txt

    gem install stripe --install-dir /home/deploy/.gem/ruby/2.2.0


    #cd /home
    #tar -zxf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz 
    #chown -R deploy /home/deploy
    

  EOH
end


