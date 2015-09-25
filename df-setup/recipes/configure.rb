script "df-setup" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    echo "#-#-#-#-#-# luchihli Setup"
    id > setup.txt
    env > setup.txt

    gem install stripe --source https://github.com/stripe/stripe-ruby
    

    #cd /home
    #tar -zxf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz 
    #chown -R deploy /home/deploy
    

  EOH
end


