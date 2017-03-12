## TWRP device tree for Samsung Galaxy Note 4 (Snapdragon)
## trltexx, trltedt, trltetmo, trltecan, trltespr, trlteusc, trltevzw, trlteatt

Add to `.repo/local_manifests/trlte.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/trlte" name="android_device_samsung_trlte" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_trlte-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/underscoremone/android_kernel_samsung_trlte/tree/cm-14.1

