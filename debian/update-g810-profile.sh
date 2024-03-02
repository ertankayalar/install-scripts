# g810 led profile updater
sudo cp usr/share/doc/g810-led/examples/sample_profiles/all_green /etc/g810-led/profile 
sudo cp usr/share/doc/g810-led/examples/sample_profiles/fx_color_green /etc/g810-led/profile 
sudo cp usr/share/doc/g810-led/examples/sample_profiles/colors /etc/g810-led/profile 
sudo cp usr/share/doc/g810-led/examples/sample_profiles/group_keys /etc/g810-led/profile 
g810-led -p /etc/g810-led/profile

