script "install_something" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    date > 1.txt
    echo "Hello" >> 1.txt
  EOH
end


