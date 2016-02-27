# Create Contoso.com forest
windows_ad_domain "contoso.com" do
  action :create
  type "forest"
  safe_mode_pass "Passw0rd"
end

# Create Contoso.com replica
windows_ad_domain "contoso.com" do
  action :create
  type "replica"
  safe_mode_pass "Passw0rd"
  domain_pass "Passw0rd"
  domain_user "Administrator"
end

# Create Contoso.com forest with DNS, Win2008 R2 Operational Mode Windows Server 2008 R2
windows_ad_domain "contoso.com" do
  action :create
  type "forest"
  safe_mode_pass "Passw0rd"
  options ({ "domainlevel" => "4",
             "forestlevel" => "4",
             "InstallDNS" => "yes"
           })
end

# Create Contoso.com forest with DNS, Win2008 Operational Mode Windows Server 2012
windows_ad_domain "contoso.com" do
  action :create
  type "forest"
  safe_mode_pass "Passw0rd"
  options ({ "ForestMode" => "Win2008",
             "InstallDNS" => nil
           })
end

# Remove Domain Controller
windows_ad_domain "contoso.com" do
  action :delete
  local_pass "Passw0rd"
end