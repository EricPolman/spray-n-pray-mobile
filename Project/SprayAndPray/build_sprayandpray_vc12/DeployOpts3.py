# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'android'
options["appdata"]=ur'C:/Users/EricPolman/AppData/Roaming/MarmaladeTools'
options["build"]=ur'ARM GCC Release'
options["cmdline"]=['C:/Program Files/Marmalade/7.4/s3e/makefile_builder/mkb.py', 'd:/Git/Year2/fga2.gt2/SprayAndPray/SprayAndPray.mkb', '--buildenv=VC12', '--fake-vc-call', '--default-buildenv=vc12', '--msvc-project', '--deploy-only']
options["configlist"]=ur'Default ,'
options["deploymode"]=ur'Package, Install and Run'
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur'nomkb'
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["lastdir"]=ur'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12'
options["mkb"]=ur'd:/Git/Year2/fga2.gt2/SprayAndPray/SprayAndPray.mkb'
options["mkbdir"]=ur'd:/Git/Year2/fga2.gt2/SprayAndPray'
options["mkbfile"]=ur'SprayAndPray.mkb'
options["outdir"]=ur'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12'
options["resdir"]=ur'c:/program files/marmalade/7.4/tools/DeployTool/'
options["s3edir"]=ur'C:/Program Files/Marmalade/7.4/s3e'
options["stage"]=ur'build'
options["target"]=ur'SprayAndPray'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:android ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="android"
t["endDir"]="d:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12/deployments/default/android/release/arm"
