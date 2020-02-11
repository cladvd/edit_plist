# Update manifest.plist for the ENTERPRISE release

This script allows to update the properties used from Apple to perform a release in Enterprise Mode

It can be used to **update** the following properties in the **manifest.plist**:

- URL where is located the **.ipa** file
- Bundle Version of the **.ipa** file

# Base configuration for manifest.plist 

Before the first usage of the script define these properties in the manifest.plist in order to define the **mandatory** fields for your release in Enterprise way

```xml
<key>bundle-identifier</key> 
<!--TODO 1 Insert bundle identifier that never changes-->
<string></string>
```

```xml
<key>title</key>
<!--TODO 2 Insert app title that never changes-->
<string></string>
```

# Optional configuration of manifest.plist
These are optional parameters that are used by the release in Enterprise way, you can update them before the first run of the script and they will remain always the same

```xml
<string>display-image</string>
<key>url</key>
<!--Update if you use it otherwise current value is ok-->
<string>https://</string>
```

```xml
<key>kind</key>
<string>full-size-image</string>
<key>url</key>
<!--Update if you use it otherwise current value is ok-->
<string>https://</string>
```


# How To Use!
After the creation and the signing of you **.ipa** file you can execute this script to update significant properties in the manifest.plist it using:

```sh
$ sh editPlist.sh  [remote_folder_where_your_file_will_be] [bundle_version] [file_name.ipa]
```

The script will create the release path with these properties and update the manifest that can be uploaded on the web page for Release in Enterprise Mode