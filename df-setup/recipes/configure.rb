script "df-setup" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    echo "#-#-#-#-#-# luchihli Setup"
    id > setup.txt
    env > setup.txt
   
    chown -R deploy  /usr/local/lib/ruby/gems
    #gem install stripe --source https://github.com/stripe/stripe-ruby --install-dir /home/deploy/.bundler/df_app 
    chown -R deploy /home/deploy/.bundler/df_app

    #cd /home
    #tar -zxf /opt/aws/opsworks/current/merged-cookbooks/deployhome.tar.gz 
    #chown -R deploy /home/deploy
    

  EOH
end


