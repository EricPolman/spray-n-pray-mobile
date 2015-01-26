# -*- coding: utf-8 -*-
# Deployment settings for SprayAndPray.
# This file is autogenerated by the mkb system and used by the s3e deployment
# tool during the build process.

config = {}
cmdline = ['C:/Program Files/Marmalade/7.4/s3e/makefile_builder/mkb.py', 'd:/Git/Year2/fga2.gt2/SprayAndPray/SprayAndPray.mkb', '--deploy-only', '--hub-data', 'D:/Git/Year2/fga2.gt2/SprayAndPray/project_SprayAndPray/mkb-ws80.txt', '--buildenv=VC12', '--buildenv-toolset=WS8']
mkb = 'd:/Git/Year2/fga2.gt2/SprayAndPray/SprayAndPray.mkb'
mkf = ['c:\\program files\\marmalade\\7.4\\s3e\\s3e-default.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwutil\\iwutil.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\third_party\\libjpeg\\libjpeg.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\third_party\\libpng\\libpng.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\third_party\\zlib\\zlib.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iw2dscenegraphcore\\iw2dscenegraphcore.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iw2dscenegraph\\iw2dscenegraph.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iw2d\\iw2d.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwgx\\iwgx.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwgl\\iwgl.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwgeom\\iwgeom.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwresmanager\\iwresmanager.mkf', 'c:\\program files\\marmalade\\7.4\\extensions\\pvrtextool\\pvrtextool.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwgxfont\\iwgxfont.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\third_party\\tiniconv\\tiniconv.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwnui\\iwnui.mkf', 'c:\\program files\\marmalade\\7.4\\extensions\\s3enui\\s3enui.mkf', 'c:\\program files\\marmalade\\7.4\\extensions\\s3enui\\s3enui_iwui.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwui\\iwui.mkf', 'c:\\program files\\marmalade\\7.4\\modules\\iwtween\\iwtween.mkf', 'd:\\git\\year2\\fga2.gt2\\sprayandpray\\soundengine.mkf']

class DeployConfig(object):
    pass

######### ASSET GROUPS #############

assets = {}

assets['Default'] = [
    ('d:/Git/Year2/fga2.gt2/SprayAndPray/data-ram/data-gles1/images.group.bin,d:/Git/Year2/fga2.gt2/SprayAndPray/data/images.group.bin', 'images.group.bin', 0),
    ('d:/Git/Year2/fga2.gt2/SprayAndPray/data-ram/data-gles1/audio.group.bin,d:/Git/Year2/fga2.gt2/SprayAndPray/data/audio.group.bin', 'audio.group.bin', 0),
]

######### DEFAULT CONFIG #############

class DefaultConfig(DeployConfig):
    embed_icf = -1
    name = 'SprayAndPray'
    pub_sign_key = 0
    priv_sign_key = 0
    caption = 'Spray & Pray'
    long_caption = 'SprayAndPray'
    version = [0, 0, 1]
    config = ['d:/Git/Year2/fga2.gt2/SprayAndPray/data/app.icf']
    data_dir = 'd:/Git/Year2/fga2.gt2/SprayAndPray/data'
    mkb_dir = 'd:/Git/Year2/fga2.gt2/SprayAndPray'
    iphone_link_lib = ['s3eNUI ']
    osx_ext_dll = ['c:/program files/marmalade/7.4/extensions/pvrtextool/lib/osx/libPVRTexTool.dylib']
    wp81_extra_pri = []
    ws8_ext_capabilities = []
    android_external_res = []
    win32_ext_dll = ['c:/program files/marmalade/7.4/extensions/pvrtextool/lib/win32/PVRTexTool.dll']
    wp8_ext_capabilities = []
    ws8_extra_res = []
    ws81_ext_managed_dll = []
    iphone_link_libdir = ['c:/program files/marmalade/7.4/extensions/s3enui/lib/iphone']
    wp81_ext_capabilities = []
    android_extra_application_manifest = []
    ws8_ext_native_dll = []
    android_external_assets = []
    blackberry_extra_descriptor = []
    android_extra_manifest = []
    wp81_ext_sdk_ref = []
    iphone_link_libdirs = []
    wp81_ext_device_capabilities = []
    linux_ext_lib = []
    ws8_ext_managed_dll = []
    ws8_ext_sdk_manifest_part = []
    ws8_ext_device_capabilities = []
    ws81_extra_pri = []
    android_external_jars = ['c:/program files/marmalade/7.4/extensions/s3enui/lib/android/s3eNUI.jar']
    win8_winrt_extra_res = []
    wp81_ext_sdk_manifest_part = []
    android_supports_gl_texture = []
    wp81_extra_res = []
    wp81_ext_managed_dll = []
    ws81_ext_sdk_manifest_part = []
    ws81_ext_device_capabilities = []
    ws8_ext_sdk_ref = []
    iphone_extra_string = []
    tizen_so = []
    iphone_app_fonts = 1
    wp8_ext_native_dll = []
    win8_phone_extra_res = []
    win8_store_extra_res = []
    iphone_link_opts = []
    ws81_ext_sdk_ref = []
    wp8_extra_res = []
    ws81_ext_native_dll = []
    ws8_extra_pri = []
    wp8_ext_managed_dll = []
    android_extra_packages = []
    android_so = ['c:/program files/marmalade/7.4/extensions/s3enui/lib/android/libs3eNUI.so']
    wp8_ext_sdk_ref = []
    osx_extra_res = []
    ws81_extra_res = []
    wp81_ext_native_dll = []
    ws81_ext_capabilities = []
    iphone_link_libs = []
    target = {
         'ws8-x86' : {
                   'debug'   : r'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12_ws8toolset/Debug_SprayAndPray_VC12_WS8TOOLSET_x86/SprayAndPray.s86',
                   'release' : r'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12_ws8toolset/Release_SprayAndPray_VC12_WS8TOOLSET_x86/SprayAndPray.s86',
                 },
         'ws8-arm' : {
                   'debug'   : r'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12_ws8toolset/Debug_SprayAndPray_VC12_WS8TOOLSET_arm/SprayAndPray.s86',
                   'release' : r'd:/Git/Year2/fga2.gt2/SprayAndPray/build_sprayandpray_vc12_ws8toolset/Release_SprayAndPray_VC12_WS8TOOLSET_arm/SprayAndPray.s86',
                 },
        }
    arm_arch = ''
    assets_original = assets
    assets = assets['Default']

default = DefaultConfig()
