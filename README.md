# Code Of Honor : AOSP 8 for the Huawei P9 Lite (hi6250)

### Kernel
This device tree is intended to be used with this kernel repo:

See: https://github.com/codeofhonor-dev/android_kernel_huawei_hi6250

branch: o-emui-5
### Vendor
This device tree is intented to be used with this vendor repo

https://github.com/codeofhonor-dev/android_vendor_huawei_hi6250

branch: o-emui5

### CoH Vendor Project

https://github.com/codeofhonor-dev/android_vendor_coh

branch: master

# How To Build
This "How to" is scoped for new builders with moderate PC skills.

### Step 1: Setting up the Build Environment.

You'll need Linux to be able to build AOSP. You have three choices here; you can:

1. Install Linux natively on your computer.
2. Dual boot Linux and Windows.
3. Use virtual machine software ( virtual box, vmware ) to run linux.

NOTE: I recommend you use Ubuntu 16.04 LTS to build. That's what I use.

NOTE: DISK SPACE - You'll need about 110GB of free space for the build; swap space ( depending on PC specs ), and some head room. I'd say 130GB at a minimum but more is better if you can spare it.

## Now read this: http://source.android.com/source/initializing.html

### Step 2: Downloading the Source.

NOTE: Some say that it is better to download the ROM source and put in your local manifest later. I don't know if that's best but that's what we are going to do.

BEFORE YOU BEGIN: You are about to start downloading 15 - 20 Gigs of data. That could take a very long time, so plan accordingly. I like to start just before I go to sleep and let it go overnight! If you have to work, perhaps start it before work and let it go through out the day.

Execute the following commands in a linux terminal:

Terminal:
```bash
mkdir /home/$USER/aosp
cd /home/$USER/aosp
repo init -u https://android.googlesource.com/platform/manifest -b android-8.1.0_r18
repo sync
```
WARNING: There may be times, towards the end when it seem like, the download is stuck and not making any progress because there are no updates on the screen. BE PATIENT!, open a program that will show how much bandwidth you are using to be sure!

### Step 3: Set up local manifest.

The local manifest is different for every device. It contains those repos that are device specific, where as the ROM code you just "repo sync'd" is code that is general to any device.

NOTE: Meticulus Development also builds some extra features and functions into its builds and we include the source for those builds in this tree as well.

Execute the following commands:

Terminal:
```bash
mkdir /home/$USER/aosp/.repo/local_manifests
gedit /home/$USER/aosp/.repo/local_manifests/hi6250.xml
```
Copy the following into hi6250.xml, save and caospe.
```bash
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="codeofhonor-dev/android_kernel_huawei_hi6250" path="kernel/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="codeofhonor-dev/android_device_huawei_hi6250" path="device/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="codeofhonor-dev/android_vendor_huawei_hi6250" path="vendor/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="codeofhonor-dev/android_vendor_coh" path="vendor/coh" remote="github" revision="master"/>
</manifest>
```

Alternatively, if you would like to include Meticulus Development's "extras" then copy the following into hi6250.xml, save and caospe.
```bash
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="Meticulus/android_kernel_huawei_hi6250" path="kernel/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="Meticulus/android_device_huawei_hi6250" path="device/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="Meticulus/android_vendor_huawei_hi6250" path="vendor/huawei/hi6250" remote="github" revision="o-emui5"/>
  <project name="codeofhonor-dev/android_vendor_coh" path="vendor/coh" remote="github" revision="master"/>
  <project name="codeofhonor-dev/android_packages_apps_CodinalteParts" path="packages/apps/CodinalteParts" remote="github" revision="hi6250"/>
</manifest>
```

Execute the following commands:

Terminal:
```bash
cd /home/$USER/aosp
repo sync
```

NOTE: Yes we are syncing again and No, it shouldn't take quite as long. Every time you repo sync just new data is downloaded. So we are downloading the 6 or 7 repo's we just put in and any updates that may have occured to the repo's we already have.

### Step 4: Building

#### Are you Meticulus? (optional)
If you want to include Code Of Honor's extras

Terminal:
```bash
export I_AM_CODEOFHONOR=true
```

#### Make sure there is enough memory for Jack(recommended).
This may not be neccessary depending on your PC's specs. On my previous laptop ( only 4Gig of mem ), I could not build without this and I keep it just in case.

Terminal:
```bash
export ANDROID_JACK_VM_ARGS="-Xmx4g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
```

#### Turn on autopatch (recommended)
This will apply device specific patches everytime you lunch.

Terminal:
```bash
export AUTOPATCH=true
```

If you did not turn on autopatch, you will want to apply the repo patches manually. These patches modify code in the ROM to work with this device.
Execute the following commands:

Terminal:
```bash
cd /home/$USER/aosp/device/huawei/hi6250/patches && ./patch.sh
```

NOTE: Now you have everything that you need to build AOSP Oreo for your hi6250 device. Build times depend on your PC's performance specifications. In the following terminal command "-j8" represents the number of concurrent tasks to execute. For low specs machines (such as mine) lowering the value to "-j3" may help speed things up. For high spec'd machines raising the value may speed things up.

NOTE: It may take anywhere from 1 hours to 15 hours depending on system specs for a complete build.
Execute the following commands:

Terminal:
```bash
cd /home/$USER/aosp
. build/envsetup.sh
lunch aosp_hi6250-userdebug
make -j8 bacon
```


### Please let me know if there are mistakes,typos, mis/outdated - information in these instructions by creating an "issue".
