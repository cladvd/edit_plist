# Update manifest.plist for the ENTERPRISE release

This script allows to update the properties used from Apple to perform a release in Enterprise Mode

It can be used to **update** the following properties in the **manifest.plist**:

- URL where is located the **.ipa** file
- Bundle Version of the **.ipa** file


# How To Use!
After the creation and the signing of you **.ipa** file you can execute this script to update significant properties in the manifest.plist it using:

```sh
$ sh editPlist.sh  [remote_folder_where_your_file_will_be] [bundle_version] [file_name.ipa]
```

The script will create the release path with these properties and update the manifest that can be uploaded on the web page for Release in Enterprise Mode