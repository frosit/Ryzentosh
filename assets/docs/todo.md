


## Hide devices

```angular2html
11.6.1 Configuration
No additional configuration should work well in most circumstances, but if required the following options for the driver may be specified in UEFI/Drivers/Arguments:
• --hide-devices - String value, no default.
```




			<dict>
				<key>Arch</key>
				<string>Any</string>
				<key>BundlePath</key>
				<string>AirportBrcmFixup.kext</string>
				<key>Comment</key>
				<string>AirportBrcmFixup.kext</string>
				<key>Enabled</key>
				<true/>
				<key>ExecutablePath</key>
				<string>Contents/MacOS/AirportBrcmFixup</string>
				<key>MaxKernel</key>
				<string></string>
				<key>MinKernel</key>
				<string></string>
				<key>PlistPath</key>
				<string>Contents/Info.plist</string>
			</dict>



            			<dict>
				<key>Arch</key>
				<string>Any</string>
				<key>BundlePath</key>
				<string>AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcm4360_Injector.kext</string>
				<key>Comment</key>
				<string>AirPortBrcm4360_Injector.kext</string>
				<key>Enabled</key>
				<true/>
				<key>ExecutablePath</key>
				<string></string>
				<key>MaxKernel</key>
				<string></string>
				<key>MinKernel</key>
				<string></string>
				<key>PlistPath</key>
				<string>Contents/Info.plist</string>
			</dict>
			<dict>
				<key>Arch</key>
				<string>Any</string>
				<key>BundlePath</key>
				<string>AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcmNIC_Injector.kext</string>
				<key>Comment</key>
				<string>AirPortBrcmNIC_Injector.kext</string>
				<key>Enabled</key>
				<true/>
				<key>ExecutablePath</key>
				<string></string>
				<key>MaxKernel</key>
				<string></string>
				<key>MinKernel</key>
				<string></string>
				<key>PlistPath</key>
				<string>Contents/Info.plist</string>
			</dict>