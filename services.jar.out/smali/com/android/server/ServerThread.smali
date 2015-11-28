.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1378
    const-wide/32 v0, 0x20000000

    .line 1380
    .local v0, "MEMORY_SIZE_MIN":J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1381
    .local v2, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1382
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1383
    const/4 v3, 0x0

    .line 1385
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static final startLGSystemServer(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1389
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.systemservice"

    const-string v3, "com.lge.systemservice.service.LGSystemServer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1391
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1392
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1371
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1374
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1375
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 176

    .prologue
    .line 123
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 126
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 128
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 131
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 132
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 136
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v151

    .line 138
    .local v151, "shutdownAction":Ljava/lang/String;
    if-eqz v151, :cond_0

    invoke-virtual/range {v151 .. v151}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 139
    const/4 v7, 0x0

    move-object/from16 v0, v151

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_30

    const/16 v145, 0x1

    .line 142
    .local v145, "reboot":Z
    :goto_0
    invoke-virtual/range {v151 .. v151}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_31

    .line 143
    const/4 v7, 0x1

    invoke-virtual/range {v151 .. v151}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v151

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v144

    .line 148
    .local v144, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v145

    move-object/from16 v1, v144

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 152
    .end local v144    # "reason":Ljava/lang/String;
    .end local v145    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 153
    .local v108, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v108

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/16 v107, 0x0

    .line 155
    .local v107, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 157
    .local v34, "headless":Z
    const/16 v113, 0x0

    .line 158
    .local v113, "installer":Lcom/android/server/pm/Installer;
    const/16 v64, 0x0

    .line 159
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v84, 0x0

    .line 160
    .local v84, "contentService":Lcom/android/server/content/ContentService;
    const/16 v116, 0x0

    .line 161
    .local v116, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 162
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v100, 0x0

    .line 163
    .local v100, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v71, 0x0

    .line 164
    .local v71, "battery":Lcom/android/server/BatteryService;
    const/16 v164, 0x0

    .line 165
    .local v164, "vibrator":Lcom/android/server/VibratorService;
    const/16 v66, 0x0

    .line 166
    .local v66, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v128, 0x0

    .line 167
    .local v128, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 168
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 169
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v132, 0x0

    .line 170
    .local v132, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v79, 0x0

    .line 171
    .local v79, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v140, 0x0

    .line 172
    .local v140, "qcCon":Ljava/lang/Object;
    const/16 v172, 0x0

    .line 173
    .local v172, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v170, 0x0

    .line 174
    .local v170, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v150, 0x0

    .line 175
    .local v150, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v137, 0x0

    .line 176
    .local v137, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 177
    .local v5, "context":Landroid/content/Context;
    const/16 v174, 0x0

    .line 178
    .local v174, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v72, 0x0

    .line 179
    .local v72, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v101, 0x0

    .line 180
    .local v101, "dock":Lcom/android/server/DockObserver;
    const/16 v162, 0x0

    .line 181
    .local v162, "usb":Lcom/android/server/usb/UsbService;
    const/16 v148, 0x0

    .line 182
    .local v148, "serial":Lcom/android/server/SerialService;
    const/16 v158, 0x0

    .line 183
    .local v158, "twilight":Lcom/android/server/TwilightService;
    const/16 v160, 0x0

    .line 184
    .local v160, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v146, 0x0

    .line 185
    .local v146, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v134, 0x0

    .line 186
    .local v134, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v76, 0x0

    .line 187
    .local v76, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v112, 0x0

    .line 188
    .local v112, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v154, 0x0

    .line 189
    .local v154, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v130, 0x0

    .line 190
    .local v130, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v82, 0x0

    .line 193
    .local v82, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v175, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v175

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 194
    .local v175, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v175 .. v175}, Landroid/os/HandlerThread;->start()V

    .line 195
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v175 .. v175}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    const/16 v24, 0x0

    .line 214
    .local v24, "onlyCore":Z
    const/16 v109, 0x0

    .line 219
    .local v109, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v114, Lcom/android/server/pm/Installer;

    invoke-direct/range {v114 .. v114}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .local v114, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/pm/Installer;->ping()Z

    .line 223
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_67

    .line 224
    const/16 v115, 0x0

    .line 226
    .local v115, "lgPower":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "com.android.server.power.LGPowerManagerService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 227
    .local v74, "c":Ljava/lang/Class;
    if-eqz v74, :cond_1

    .line 228
    const/4 v7, 0x0

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v81

    .line 229
    .local v81, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v81, :cond_1

    .line 230
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    .end local v115    # "lgPower":Lcom/android/server/power/PowerManagerService;
    check-cast v115, Lcom/android/server/power/PowerManagerService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_67

    .line 237
    .end local v74    # "c":Ljava/lang/Class;
    .end local v81    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v115    # "lgPower":Lcom/android/server/power/PowerManagerService;
    :cond_1
    :goto_3
    if-nez v115, :cond_33

    :try_start_3
    new-instance v115, Lcom/android/server/power/PowerManagerService;

    .end local v115    # "lgPower":Lcom/android/server/power/PowerManagerService;
    invoke-direct/range {v115 .. v115}, Lcom/android/server/power/PowerManagerService;-><init>()V

    move-object/from16 v4, v115

    .line 238
    :goto_4
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static/range {v107 .. v107}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_67

    move-result-object v5

    move-object/from16 v113, v114

    .line 247
    .end local v114    # "installer":Lcom/android/server/pm/Installer;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    :goto_5
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 248
    .local v97, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 249
    .local v94, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 250
    .local v92, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 251
    .local v99, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 252
    .local v93, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 253
    .local v98, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 254
    .local v96, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 255
    .local v95, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 258
    .local v91, "disableAtlas":Z
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5c

    .line 260
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v155, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5d

    .line 264
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v155, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.registry"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v131, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 269
    .end local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v131, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_7
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5e

    move-object/from16 v130, v131

    .line 272
    .end local v131    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_2
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 275
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_3

    .line 278
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 285
    .local v87, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 286
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v24, 0x1

    .line 296
    :cond_4
    :goto_6
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 300
    if-eqz v107, :cond_35

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, v113

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v137

    .line 307
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 312
    :try_start_9
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    move-result v109

    .line 316
    :goto_8
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 318
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 330
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v65, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 332
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v65, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_c
    const-string v7, "account"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    move-object/from16 v64, v65

    .line 337
    .end local v65    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_9
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v7, 0x1

    move/from16 v0, v107

    if-ne v0, v7, :cond_36

    const/4 v7, 0x1

    :goto_a
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v84

    .line 341
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 344
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 347
    .end local v116    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_60

    .line 349
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_f
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 351
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v165, Lcom/android/server/VibratorService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_61

    .line 353
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .local v165, "vibrator":Lcom/android/server/VibratorService;
    :try_start_10
    const-string v7, "vibrator"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 355
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v83, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_62

    .line 357
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v83, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_11
    const-string v7, "consumer_ir"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 361
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 365
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_63

    .line 367
    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_12
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 372
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 374
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_64

    .line 377
    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_37

    const/16 v22, 0x1

    :goto_b
    if-nez v109, :cond_38

    if-nez v107, :cond_38

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v174

    .line 381
    const-string v7, "window"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 382
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v174

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 386
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 387
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 389
    move-object/from16 v0, v174

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 390
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 395
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 396
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_4

    :goto_d
    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v164, v165

    .line 414
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    :goto_e
    const/16 v89, 0x0

    .line 415
    .local v89, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v152, 0x0

    .line 416
    .local v152, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v110, 0x0

    .line 417
    .local v110, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v67, 0x0

    .line 418
    .local v67, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v136, 0x0

    .line 419
    .local v136, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v169, 0x0

    .line 420
    .local v169, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v117, 0x0

    .line 421
    .local v117, "location":Lcom/android/server/LocationManagerService;
    const/16 v85, 0x0

    .line 422
    .local v85, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v156, 0x0

    .line 423
    .local v156, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v119, 0x0

    .line 424
    .local v119, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v103, 0x0

    .line 425
    .local v103, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v69, 0x0

    .line 426
    .local v69, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v138, 0x0

    .line 428
    .local v138, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v166, 0x0

    .line 429
    .local v166, "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    const/16 v125, 0x0

    .line 432
    .local v125, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_5

    .line 436
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v111, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v174

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    .line 438
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v111, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_15
    const-string v7, "input_method"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5b

    move-object/from16 v110, v111

    .line 444
    .end local v111    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_f
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 454
    :cond_5
    :goto_10
    :try_start_17
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 460
    :goto_11
    :try_start_18
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 466
    :goto_12
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040437

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5a

    .line 473
    :goto_13
    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_45

    .line 474
    if-nez v97, :cond_6

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 481
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v129, Lcom/android/server/MountService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    .line 483
    .end local v128    # "mountService":Lcom/android/server/MountService;
    .local v129, "mountService":Lcom/android/server/MountService;
    :try_start_1b
    const-string v7, "mount"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_59

    move-object/from16 v128, v129

    .line 489
    .end local v129    # "mountService":Lcom/android/server/MountService;
    .restart local v128    # "mountService":Lcom/android/server/MountService;
    :cond_6
    :goto_14
    if-nez v96, :cond_8

    .line 491
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_b

    .line 495
    :try_start_1d
    const-string v7, "com.android.server.LockSettingsServiceEx"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 496
    .restart local v74    # "c":Ljava/lang/Class;
    if-eqz v74, :cond_7

    .line 497
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v81

    .line 498
    .restart local v81    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v81, :cond_7

    .line 499
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/LockSettingsService;

    move-object/from16 v119, v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    .end local v81    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_7
    move-object/from16 v120, v119

    .line 505
    .end local v74    # "c":Ljava/lang/Class;
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v120, "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_15
    if-nez v120, :cond_44

    .line 506
    :try_start_1e
    new-instance v119, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v119

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_58

    .line 509
    .end local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_16
    :try_start_1f
    const-string v7, "lock_settings"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 515
    :goto_17
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v90, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c

    .line 517
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v90, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_21
    const-string v7, "device_policy"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_57

    move-object/from16 v89, v90

    .line 523
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_8
    :goto_18
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 524
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/lge/cappuccino/IMdm;->launchService(Landroid/content/Context;)V

    .line 528
    :cond_9
    if-nez v98, :cond_b

    .line 530
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    .line 533
    :try_start_23
    const-string v7, "com.android.server.StatusBarManagerServiceEx"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 534
    .restart local v74    # "c":Ljava/lang/Class;
    if-eqz v74, :cond_a

    .line 535
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Lcom/android/server/wm/WindowManagerService;

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v88

    .line 536
    .local v88, "ctor":Ljava/lang/reflect/Constructor;
    if-eqz v88, :cond_a

    .line 537
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v174, v7, v9

    move-object/from16 v0, v88

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v152, v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 546
    .end local v74    # "c":Ljava/lang/Class;
    .end local v88    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_a
    :goto_19
    :try_start_24
    const-string v7, "statusbar"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e

    .line 552
    :cond_b
    :goto_1a
    if-nez v96, :cond_c

    .line 554
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 562
    :cond_c
    :goto_1b
    if-nez v95, :cond_d

    .line 564
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 566
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .line 572
    :cond_d
    :goto_1c
    if-nez v96, :cond_e

    .line 574
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v157, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    .line 576
    .end local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v157, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_28
    const-string v7, "textservices"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_56

    move-object/from16 v156, v157

    .line 582
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_e
    :goto_1d
    if-nez v95, :cond_43

    .line 584
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v133, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v133

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    .line 586
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v133, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_2a
    const-string v7, "netstats"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_55

    move-object/from16 v29, v133

    .line 592
    .end local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1e
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 596
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_2c
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_54

    .line 602
    :goto_1f
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v173, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v173

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 604
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v173, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2e
    const-string v7, "wifip2p"

    move-object/from16 v0, v173

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_53

    move-object/from16 v172, v173

    .line 610
    .end local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_20
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v171, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 612
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v171, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_30
    const-string v7, "wifi"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_52

    move-object/from16 v170, v171

    .line 618
    .end local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_21
    const/16 v106, 0x1

    .line 619
    .local v106, "enableCne":I
    :try_start_31
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_f

    .line 620
    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v106

    .line 622
    :cond_f
    const/4 v7, 0x1

    move/from16 v0, v106

    if-ne v0, v7, :cond_3d

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v75

    .line 625
    .local v75, "cneFeature":I
    :goto_22
    if-lez v75, :cond_3e

    const/16 v7, 0xa

    move/from16 v0, v75

    if-ge v0, v7, :cond_3e

    .line 626
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v142, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v142

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 630
    .local v142, "qcsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v142

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v141

    .line 632
    .local v141, "qcsClass":Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/INetworkManagementService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Landroid/net/INetworkStatsService;

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-class v10, Landroid/net/INetworkPolicyManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v141

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v143

    .line 635
    .local v143, "qcsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v143

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v140

    .line 637
    move-object/from16 v0, v140

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v79, v0

    .line 643
    .end local v140    # "qcCon":Ljava/lang/Object;
    .end local v141    # "qcsClass":Ljava/lang/Class;
    .end local v142    # "qcsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v143    # "qcsConstructor":Ljava/lang/reflect/Constructor;
    :goto_23
    if-eqz v79, :cond_10

    .line 644
    const-string v7, "connectivity"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 645
    move-object/from16 v0, v29

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 646
    move-object/from16 v0, v25

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 648
    invoke-virtual/range {v172 .. v172}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 649
    if-eqz v170, :cond_10

    .line 650
    invoke-virtual/range {v170 .. v170}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    .line 658
    .end local v75    # "cneFeature":I
    :cond_10
    :goto_24
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v150

    .line 660
    const-string v7, "servicediscovery"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    .line 667
    .end local v106    # "enableCne":I
    :goto_25
    if-nez v96, :cond_11

    .line 669
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    .line 682
    :cond_11
    :goto_26
    if-eqz v128, :cond_12

    if-nez v24, :cond_12

    .line 683
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 687
    :cond_12
    if-eqz v64, :cond_13

    .line 688
    :try_start_34
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 694
    :cond_13
    :goto_27
    if-eqz v84, :cond_14

    .line 695
    :try_start_35
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 702
    :cond_14
    :goto_28
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 703
    const/16 v123, 0x0

    .line 705
    .local v123, "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v7, "com.android.server.NotificationManagerServiceEx"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 706
    .restart local v74    # "c":Ljava/lang/Class;
    if-eqz v74, :cond_15

    .line 707
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Lcom/android/server/StatusBarManagerService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Lcom/android/server/LightsService;

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v81

    .line 708
    .restart local v81    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v81, :cond_15

    .line 709
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v152, v7, v9

    const/4 v9, 0x2

    aput-object v6, v7, v9

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    .end local v123    # "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    check-cast v123, Lcom/android/server/NotificationManagerService;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 717
    .end local v74    # "c":Ljava/lang/Class;
    .end local v81    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v123    # "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    :cond_15
    :goto_29
    if-nez v123, :cond_3f

    :try_start_38
    new-instance v123, Lcom/android/server/NotificationManagerService;

    .end local v123    # "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    move-object/from16 v0, v123

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V

    move-object/from16 v136, v123

    .line 718
    :goto_2a
    const-string v7, "notification"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 719
    move-object/from16 v0, v25

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 735
    :goto_2b
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 742
    :goto_2c
    if-nez v93, :cond_16

    .line 744
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v118, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 746
    .end local v117    # "location":Lcom/android/server/LocationManagerService;
    .local v118, "location":Lcom/android/server/LocationManagerService;
    :try_start_3b
    const-string v7, "location"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_51

    move-object/from16 v117, v118

    .line 752
    .end local v118    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "location":Lcom/android/server/LocationManagerService;
    :goto_2d
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v86, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 754
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v86, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3d
    const-string v7, "country_detector"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_50

    move-object/from16 v85, v86

    .line 761
    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_16
    :goto_2e
    const-string v7, "VZW"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 763
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Vzw Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v167, Lcom/vzw/location/server/VzwLocationManagerService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/vzw/location/server/VzwLocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 765
    .end local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .local v167, "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :try_start_3f
    const-string v7, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_4f

    move-object/from16 v166, v167

    .line 771
    .end local v167    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :cond_17
    :goto_2f
    if-nez v96, :cond_18

    .line 773
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .line 782
    :cond_18
    :goto_30
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_22

    .line 789
    :goto_31
    if-nez v96, :cond_1a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110031

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 792
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 793
    if-nez v34, :cond_1a

    .line 796
    const/16 v124, 0x0

    .line 798
    .local v124, "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    :try_start_43
    const-string v7, "com.android.server.WallpaperManagerServiceEx"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 799
    .restart local v74    # "c":Ljava/lang/Class;
    if-eqz v74, :cond_19

    .line 800
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v81

    .line 801
    .restart local v81    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v81, :cond_19

    .line 802
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v124

    .end local v124    # "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    check-cast v124, Lcom/android/server/WallpaperManagerService;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .line 810
    .end local v74    # "c":Ljava/lang/Class;
    .end local v81    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v124    # "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    :cond_19
    :goto_32
    if-nez v124, :cond_40

    :try_start_44
    new-instance v124, Lcom/android/server/WallpaperManagerService;

    .end local v124    # "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v169, v124

    .line 813
    :goto_33
    const-string v7, "wallpaper"

    move-object/from16 v0, v169

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    .line 820
    :cond_1a
    :goto_34
    if-nez v94, :cond_1c

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 822
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 824
    const/16 v121, 0x0

    .line 825
    .local v121, "mAudioService":Landroid/media/AudioService;
    const/16 v122, 0x0

    .line 827
    .local v122, "mAudioServiceEx":Landroid/media/AudioService;
    :try_start_46
    const-string v7, "android.media.AudioServiceEx"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v74

    .line 828
    .restart local v74    # "c":Ljava/lang/Class;
    if-eqz v74, :cond_1b

    .line 829
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v81

    .line 830
    .restart local v81    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v81, :cond_1b

    .line 831
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v122

    .end local v122    # "mAudioServiceEx":Landroid/media/AudioService;
    check-cast v122, Landroid/media/AudioService;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .line 839
    .end local v74    # "c":Ljava/lang/Class;
    .end local v81    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v122    # "mAudioServiceEx":Landroid/media/AudioService;
    :cond_1b
    :goto_35
    if-nez v122, :cond_41

    :try_start_47
    new-instance v121, Landroid/media/AudioService;

    .end local v121    # "mAudioService":Landroid/media/AudioService;
    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 840
    .restart local v121    # "mAudioService":Landroid/media/AudioService;
    :goto_36
    const-string v7, "audio"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_26

    .line 847
    .end local v121    # "mAudioService":Landroid/media/AudioService;
    .end local v122    # "mAudioServiceEx":Landroid/media/AudioService;
    :cond_1c
    :goto_37
    if-nez v96, :cond_1d

    .line 849
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v102, Lcom/android/server/DockObserver;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_27

    .end local v101    # "dock":Lcom/android/server/DockObserver;
    .local v102, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v101, v102

    .line 857
    .end local v102    # "dock":Lcom/android/server/DockObserver;
    .restart local v101    # "dock":Lcom/android/server/DockObserver;
    :cond_1d
    :goto_38
    if-nez v94, :cond_1e

    .line 859
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .line 868
    :cond_1e
    :goto_39
    if-nez v96, :cond_1f

    .line 870
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v163, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .line 873
    .end local v162    # "usb":Lcom/android/server/usb/UsbService;
    .local v163, "usb":Lcom/android/server/usb/UsbService;
    :try_start_4b
    const-string v7, "usb"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_4e

    move-object/from16 v162, v163

    .line 879
    .end local v163    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v162    # "usb":Lcom/android/server/usb/UsbService;
    :goto_3a
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v149, Lcom/android/server/SerialService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    .line 882
    .end local v148    # "serial":Lcom/android/server/SerialService;
    .local v149, "serial":Lcom/android/server/SerialService;
    :try_start_4d
    const-string v7, "serial"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_4d

    move-object/from16 v148, v149

    .line 889
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v148    # "serial":Lcom/android/server/SerialService;
    :cond_1f
    :goto_3b
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v159, Lcom/android/server/TwilightService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2b

    .end local v158    # "twilight":Lcom/android/server/TwilightService;
    .local v159, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v158, v159

    .line 896
    .end local v159    # "twilight":Lcom/android/server/TwilightService;
    .restart local v158    # "twilight":Lcom/android/server/TwilightService;
    :goto_3c
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v161, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v161

    move-object/from16 v1, v158

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2c

    .end local v160    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v161, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v160, v161

    .line 903
    .end local v161    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v160    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_3d
    if-nez v96, :cond_20

    .line 905
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    .line 913
    :goto_3e
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v68, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2e

    .line 915
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v68, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_52
    const-string v7, "appwidget"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_4c

    move-object/from16 v67, v68

    .line 921
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_3f
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v147, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2f

    .end local v146    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v147, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v146, v147

    .line 929
    .end local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v146    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_20
    :goto_40
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_30

    .line 940
    :goto_41
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    .line 947
    :goto_42
    if-nez v95, :cond_21

    .line 949
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v135, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .end local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v135, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v134, v135

    .line 956
    .end local v135    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_21
    :goto_43
    if-nez v94, :cond_22

    .line 958
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v77, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_33

    .line 960
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v77, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_58
    const-string v7, "commontime_management"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_4b

    move-object/from16 v76, v77

    .line 966
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_22
    :goto_44
    if-nez v95, :cond_23

    .line 968
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    .line 975
    :cond_23
    :goto_45
    if-nez v96, :cond_24

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 978
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v104, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .line 981
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v104, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_5b
    const-string v7, "dreams"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_4a

    move-object/from16 v103, v104

    .line 988
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_24
    :goto_46
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_THEMEICON:Z

    if-eqz v7, :cond_25

    .line 990
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "ThemeIconManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v7, "themeicon"

    new-instance v9, Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/thm/ThemeIconManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_36

    .line 1000
    :cond_25
    :goto_47
    const-string v7, "VZW"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1003
    :try_start_5d
    const-string v7, "vzwconnectivity"

    const-string v9, "add vzwconnectivity service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v7, "vzwconnectivity"

    new-instance v9, Lcom/verizon/net/ConnectivityService;

    invoke-direct {v9, v5}, Lcom/verizon/net/ConnectivityService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_37

    .line 1011
    :cond_26
    :goto_48
    if-nez v96, :cond_27

    if-nez v91, :cond_27

    .line 1013
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v70, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 1015
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v70, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_5f
    const-string v7, "assetatlas"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_49

    move-object/from16 v69, v70

    .line 1022
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_27
    :goto_49
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_39

    .line 1029
    :goto_4a
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v139, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3a

    .line 1031
    .end local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v139, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_62
    const-string v7, "print"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_48

    move-object/from16 v138, v139

    .line 1037
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_4b
    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1039
    :try_start_63
    const-string v7, "KT UCA"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3b

    .line 1046
    :cond_28
    :goto_4c
    if-nez v96, :cond_29

    .line 1048
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v126, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3c

    .line 1050
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v126, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_65
    const-string v7, "media_router"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_47

    move-object/from16 v125, v126

    .line 1059
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_29
    :goto_4d
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1060
    .local v47, "safeMode":Z
    if-eqz v47, :cond_42

    .line 1061
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1063
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1065
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1074
    :goto_4e
    :try_start_66
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3d

    .line 1079
    :goto_4f
    if-eqz v119, :cond_2a

    .line 1081
    :try_start_67
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3e

    .line 1087
    :cond_2a
    :goto_50
    if-eqz v89, :cond_2b

    .line 1089
    :try_start_68
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3f

    .line 1095
    :cond_2b
    :goto_51
    if-eqz v136, :cond_2c

    .line 1097
    :try_start_69
    invoke-virtual/range {v136 .. v136}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_40

    .line 1104
    :cond_2c
    :goto_52
    :try_start_6a
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_41

    .line 1109
    :goto_53
    if-eqz v47, :cond_2d

    .line 1110
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1116
    :cond_2d
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v78

    .line 1117
    .local v78, "config":Landroid/content/res/Configuration;
    new-instance v127, Landroid/util/DisplayMetrics;

    invoke-direct/range {v127 .. v127}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1118
    .local v127, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v168

    check-cast v168, Landroid/view/WindowManager;

    .line 1119
    .local v168, "w":Landroid/view/WindowManager;
    invoke-interface/range {v168 .. v168}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v127

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1120
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v78

    move-object/from16 v1, v127

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1123
    :try_start_6b
    move-object/from16 v0, v158

    move-object/from16 v1, v103

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_42

    .line 1129
    :goto_54
    :try_start_6c
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_43

    .line 1135
    :goto_55
    :try_start_6d
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_44

    .line 1141
    :goto_56
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-eqz v7, :cond_2e

    .line 1143
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "InteractionManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {v5}, Lcom/lge/loader/interaction/InteractionManagerLoader;->launchService(Landroid/content/Context;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_45

    .line 1151
    :cond_2e
    :goto_57
    move-object/from16 v33, v5

    .line 1152
    .local v33, "contextF":Landroid/content/Context;
    move-object/from16 v35, v128

    .line 1153
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1154
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1155
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1156
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1157
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v79

    .line 1158
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v101

    .line 1159
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v162

    .line 1160
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v158

    .line 1161
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v160

    .line 1162
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v67

    .line 1163
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v169

    .line 1164
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v110

    .line 1165
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v146

    .line 1166
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v117

    .line 1167
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v85

    .line 1168
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v134

    .line 1169
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v76

    .line 1170
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v156

    .line 1171
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v152

    .line 1172
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v103

    .line 1173
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v69

    .line 1174
    .local v58, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .line 1175
    .local v59, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v154

    .line 1176
    .local v60, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v130

    .line 1177
    .local v61, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v62, v138

    .line 1179
    .local v62, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v53, v166

    .line 1180
    .local v53, "vzw_locationF":Lcom/vzw/location/server/VzwLocationManagerService;
    move-object/from16 v63, v125

    .line 1187
    .local v63, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v63}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;ZLcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/vzw/location/server/VzwLocationManagerService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1361
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1362
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_2f
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1366
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return-void

    .line 139
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "contextF":Landroid/content/Context;
    .end local v34    # "headless":Z
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "vzw_locationF":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v59    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v62    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v63    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v78    # "config":Landroid/content/res/Configuration;
    .end local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v84    # "contentService":Lcom/android/server/content/ContentService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v91    # "disableAtlas":Z
    .end local v92    # "disableBluetooth":Z
    .end local v93    # "disableLocation":Z
    .end local v94    # "disableMedia":Z
    .end local v95    # "disableNetwork":Z
    .end local v96    # "disableNonCoreServices":Z
    .end local v97    # "disableStorage":Z
    .end local v98    # "disableSystemUI":Z
    .end local v99    # "disableTelephony":Z
    .end local v101    # "dock":Lcom/android/server/DockObserver;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v107    # "factoryTest":I
    .end local v108    # "factoryTestStr":Ljava/lang/String;
    .end local v109    # "firstBoot":Z
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .end local v117    # "location":Lcom/android/server/LocationManagerService;
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v127    # "metrics":Landroid/util/DisplayMetrics;
    .end local v128    # "mountService":Lcom/android/server/MountService;
    .end local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v137    # "pm":Landroid/content/pm/IPackageManager;
    .end local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v146    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v148    # "serial":Lcom/android/server/SerialService;
    .end local v150    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v158    # "twilight":Lcom/android/server/TwilightService;
    .end local v160    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v162    # "usb":Lcom/android/server/usb/UsbService;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .end local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v168    # "w":Landroid/view/WindowManager;
    .end local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v174    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v175    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_30
    const/16 v145, 0x0

    goto/16 :goto_0

    .line 145
    .restart local v145    # "reboot":Z
    :cond_31
    const/16 v144, 0x0

    .restart local v144    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 153
    .end local v144    # "reason":Ljava/lang/String;
    .end local v145    # "reboot":Z
    .restart local v108    # "factoryTestStr":Ljava/lang/String;
    :cond_32
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v107

    goto/16 :goto_2

    .line 233
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v34    # "headless":Z
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v101    # "dock":Lcom/android/server/DockObserver;
    .restart local v107    # "factoryTest":I
    .restart local v109    # "firstBoot":Z
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "installer":Lcom/android/server/pm/Installer;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v128    # "mountService":Lcom/android/server/MountService;
    .restart local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v137    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v140    # "qcCon":Ljava/lang/Object;
    .restart local v146    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v148    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "twilight":Lcom/android/server/TwilightService;
    .restart local v160    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v162    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v174    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v175    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v105

    .line 234
    .local v105, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "Error while loading LGPowerManagerService."

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_67

    .line 235
    const/16 v115, 0x0

    .restart local v115    # "lgPower":Lcom/android/server/power/PowerManagerService;
    goto/16 :goto_3

    .end local v105    # "e":Ljava/lang/Exception;
    :cond_33
    move-object/from16 v4, v115

    .line 237
    goto/16 :goto_4

    .line 242
    .end local v114    # "installer":Lcom/android/server/pm/Installer;
    .end local v115    # "lgPower":Lcom/android/server/power/PowerManagerService;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    :catch_1
    move-exception v105

    .line 243
    .local v105, "e":Ljava/lang/RuntimeException;
    :goto_58
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 288
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v105    # "e":Ljava/lang/RuntimeException;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v91    # "disableAtlas":Z
    .restart local v92    # "disableBluetooth":Z
    .restart local v93    # "disableLocation":Z
    .restart local v94    # "disableMedia":Z
    .restart local v95    # "disableNetwork":Z
    .restart local v96    # "disableNonCoreServices":Z
    .restart local v97    # "disableStorage":Z
    .restart local v98    # "disableSystemUI":Z
    .restart local v99    # "disableTelephony":Z
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_34
    :try_start_70
    const-string v7, "1"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 289
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 300
    :cond_35
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 333
    :catch_2
    move-exception v105

    .line 334
    .local v105, "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_70} :catch_3

    goto/16 :goto_9

    .line 409
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v105

    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v116

    .line 410
    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v105, "e":Ljava/lang/RuntimeException;
    :goto_5a
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 338
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "e":Ljava/lang/RuntimeException;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_36
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 378
    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v116    # "lights":Lcom/android/server/LightsService;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :cond_37
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_38
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 397
    :cond_39
    const/4 v7, 0x1

    move/from16 v0, v107

    if-ne v0, v7, :cond_3a

    .line 398
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 409
    :catch_4
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v164, v165

    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5a

    .line 399
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :cond_3a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 401
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 402
    :cond_3b
    if-eqz v92, :cond_3c

    .line 403
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 405
    :cond_3c
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v73, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_71} :catch_4

    .line 407
    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v73, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_72
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_72} :catch_65

    move-object/from16 v72, v73

    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_d

    .line 439
    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v117    # "location":Lcom/android/server/LocationManagerService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v105

    .line 440
    .local v105, "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 447
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v105

    .line 448
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 455
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v105

    .line 456
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 461
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v105

    .line 462
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 484
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v105

    .line 485
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 502
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v105

    .line 503
    .local v105, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "Error while creating LockSettingsServiceEx."

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_b

    move-object/from16 v120, v119

    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_15

    .line 510
    .end local v105    # "e":Ljava/lang/Exception;
    .end local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_b
    move-exception v105

    .line 511
    .local v105, "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 518
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v105

    .line 519
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 541
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v105

    .line 542
    .local v105, "e":Ljava/lang/Exception;
    :try_start_74
    const-string v7, "SystemServer"

    const-string v9, "Could not load com.android.server.StatusBarManagerServiceEx."

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    new-instance v153, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v174

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_e

    .end local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v153, "statusBar":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v152, v153

    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_19

    .line 547
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v105

    .line 548
    .local v105, "e":Ljava/lang/Throwable;
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 557
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v105

    .line 558
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 567
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v105

    .line 568
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 577
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v105

    .line 578
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 587
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v105

    .line 588
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 597
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v105

    move-object/from16 v25, v132

    .line 598
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 605
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v105

    .line 606
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 613
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v105

    .line 614
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 622
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v106    # "enableCne":I
    :cond_3d
    const/16 v75, 0x0

    goto/16 :goto_22

    .line 639
    .restart local v75    # "cneFeature":I
    :cond_3e
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v80, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v80

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_16

    .end local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v80, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v79, v80

    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_23

    .line 653
    .end local v75    # "cneFeature":I
    .end local v140    # "qcCon":Ljava/lang/Object;
    :catch_16
    move-exception v105

    .line 654
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 662
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v105

    .line 663
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 672
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v106    # "enableCne":I
    :catch_18
    move-exception v105

    .line 673
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 689
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v105

    .line 690
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 696
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v105

    .line 697
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 713
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v105

    .line 714
    .local v105, "e":Ljava/lang/Exception;
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "Error while loading NotificationManagerServiceEx."

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_1c

    .line 715
    const/16 v123, 0x0

    .restart local v123    # "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_29

    .end local v105    # "e":Ljava/lang/Exception;
    :cond_3f
    move-object/from16 v136, v123

    .line 717
    goto/16 :goto_2a

    .line 720
    .end local v123    # "mNotificationManagerServiceEx":Lcom/android/server/NotificationManagerService;
    :catch_1c
    move-exception v105

    .line 721
    .local v105, "e":Ljava/lang/Throwable;
    const-string v7, "starting NotificationManagerServiceEx"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 738
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v105

    .line 739
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 747
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v105

    .line 748
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 755
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v105

    .line 756
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 766
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v105

    .line 767
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting Vzw Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 776
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v105

    .line 777
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 785
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v105

    .line 786
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 805
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v105

    .line 806
    .local v105, "e":Ljava/lang/Exception;
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "Could not load com.android.server.WallpaperManagerServiceEx."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_24

    .line 807
    const/16 v124, 0x0

    .restart local v124    # "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_32

    .end local v105    # "e":Ljava/lang/Exception;
    :cond_40
    move-object/from16 v169, v124

    .line 810
    goto/16 :goto_33

    .line 815
    .end local v124    # "mWallpaperManagerServiceEx":Lcom/android/server/WallpaperManagerService;
    :catch_24
    move-exception v105

    .line 816
    .local v105, "e":Ljava/lang/Throwable;
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 835
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v121    # "mAudioService":Landroid/media/AudioService;
    :catch_25
    move-exception v105

    .line 836
    .local v105, "e":Ljava/lang/Exception;
    :try_start_78
    const-string v7, "SystemServer"

    const-string v9, "Error while loading AudioServiceEx."

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_26

    .line 837
    const/16 v122, 0x0

    .restart local v122    # "mAudioServiceEx":Landroid/media/AudioService;
    goto/16 :goto_35

    .end local v105    # "e":Ljava/lang/Exception;
    :cond_41
    move-object/from16 v121, v122

    .line 839
    goto/16 :goto_36

    .line 842
    .end local v121    # "mAudioService":Landroid/media/AudioService;
    .end local v122    # "mAudioServiceEx":Landroid/media/AudioService;
    :catch_26
    move-exception v105

    .line 843
    .local v105, "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 852
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v105

    .line 853
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 863
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v105

    .line 864
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 874
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v105

    .line 875
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 883
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v105

    .line 884
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 891
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v105

    .line 892
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 899
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v105

    .line 900
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 908
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v105

    .line 909
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 916
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v105

    .line 917
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 923
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v105

    .line 924
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 931
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v105

    .line 932
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 943
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v105

    .line 944
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 951
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v105

    .line 952
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 961
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v105

    .line 962
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 970
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v105

    .line 971
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 982
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v105

    .line 983
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 993
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v105

    .line 994
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ThemeIconManager"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 1005
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v105

    .line 1006
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "vzwconnectivity"

    const-string v9, "Failure starting vzwconnectivity service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 1016
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v105

    .line 1017
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1024
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v105

    .line 1025
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1032
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v105

    .line 1033
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1041
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v105

    .line 1042
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "KT UCA"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 1051
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v105

    .line 1052
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1068
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_42
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_4e

    .line 1075
    :catch_3d
    move-exception v105

    .line 1076
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1082
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v105

    .line 1083
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1090
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v105

    .line 1091
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1098
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v105

    .line 1099
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1105
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v105

    .line 1106
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1124
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v78    # "config":Landroid/content/res/Configuration;
    .restart local v127    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v168    # "w":Landroid/view/WindowManager;
    :catch_42
    move-exception v105

    .line 1125
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1130
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v105

    .line 1131
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1136
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v105

    .line 1137
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 1145
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v105

    .line 1146
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting InteractionManagerService"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    .line 313
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v78    # "config":Landroid/content/res/Configuration;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v117    # "location":Lcom/android/server/LocationManagerService;
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v127    # "metrics":Landroid/util/DisplayMetrics;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v168    # "w":Landroid/view/WindowManager;
    .end local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v140    # "qcCon":Ljava/lang/Object;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v7

    goto/16 :goto_8

    .line 1051
    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v116    # "lights":Lcom/android/server/LightsService;
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v140    # "qcCon":Ljava/lang/Object;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v117    # "location":Lcom/android/server/LocationManagerService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v105

    move-object/from16 v125, v126

    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_6e

    .line 1032
    .end local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_48
    move-exception v105

    move-object/from16 v138, v139

    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_6d

    .line 1016
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_49
    move-exception v105

    move-object/from16 v69, v70

    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_6c

    .line 982
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_4a
    move-exception v105

    move-object/from16 v103, v104

    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_6b

    .line 961
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_4b
    move-exception v105

    move-object/from16 v76, v77

    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_6a

    .line 916
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_4c
    move-exception v105

    move-object/from16 v67, v68

    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_69

    .line 883
    .end local v148    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    :catch_4d
    move-exception v105

    move-object/from16 v148, v149

    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v148    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_68

    .line 874
    .end local v162    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v163    # "usb":Lcom/android/server/usb/UsbService;
    :catch_4e
    move-exception v105

    move-object/from16 v162, v163

    .end local v163    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v162    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_67

    .line 766
    .end local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v167    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :catch_4f
    move-exception v105

    move-object/from16 v166, v167

    .end local v167    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    goto/16 :goto_66

    .line 755
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_50
    move-exception v105

    move-object/from16 v85, v86

    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_65

    .line 747
    .end local v117    # "location":Lcom/android/server/LocationManagerService;
    .restart local v118    # "location":Lcom/android/server/LocationManagerService;
    :catch_51
    move-exception v105

    move-object/from16 v117, v118

    .end local v118    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_64

    .line 613
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v140    # "qcCon":Ljava/lang/Object;
    .restart local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_52
    move-exception v105

    move-object/from16 v170, v171

    .end local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_63

    .line 605
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_53
    move-exception v105

    move-object/from16 v172, v173

    .end local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_62

    .line 597
    :catch_54
    move-exception v105

    goto/16 :goto_61

    .line 587
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_55
    move-exception v105

    move-object/from16 v29, v133

    .end local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_60

    .line 577
    .end local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_56
    move-exception v105

    move-object/from16 v156, v157

    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_5f

    .line 518
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_57
    move-exception v105

    move-object/from16 v89, v90

    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_5e

    .line 510
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_58
    move-exception v105

    move-object/from16 v119, v120

    .end local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_5d

    .line 484
    .end local v128    # "mountService":Lcom/android/server/MountService;
    .restart local v129    # "mountService":Lcom/android/server/MountService;
    :catch_59
    move-exception v105

    move-object/from16 v128, v129

    .end local v129    # "mountService":Lcom/android/server/MountService;
    .restart local v128    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_5c

    .line 470
    :catch_5a
    move-exception v7

    goto/16 :goto_13

    .line 439
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v111    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_5b
    move-exception v105

    move-object/from16 v110, v111

    .end local v111    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_5b

    .line 409
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v117    # "location":Lcom/android/server/LocationManagerService;
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    :catch_5c
    move-exception v105

    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v100

    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v116

    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    :catch_5d
    move-exception v105

    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v116

    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v131    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v105

    move-object/from16 v130, v131

    .end local v131    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v130    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v116

    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v105

    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v116

    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v64, v65

    .end local v65    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5a

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_60
    move-exception v105

    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_5a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_61
    move-exception v105

    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_5a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :catch_62
    move-exception v105

    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v164, v165

    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :catch_63
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v66

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v164, v165

    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :catch_64
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v112

    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v164, v165

    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :catch_65
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v154, v155

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v164, v165

    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .line 333
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v105

    move-object/from16 v64, v65

    .end local v65    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_59

    .line 242
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v91    # "disableAtlas":Z
    .end local v92    # "disableBluetooth":Z
    .end local v93    # "disableLocation":Z
    .end local v94    # "disableMedia":Z
    .end local v95    # "disableNetwork":Z
    .end local v96    # "disableNonCoreServices":Z
    .end local v97    # "disableStorage":Z
    .end local v98    # "disableSystemUI":Z
    .end local v99    # "disableTelephony":Z
    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v114    # "installer":Lcom/android/server/pm/Installer;
    .restart local v154    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_67
    move-exception v105

    move-object/from16 v113, v114

    .end local v114    # "installer":Lcom/android/server/pm/Installer;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_58

    .end local v66    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v112    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v116    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v91    # "disableAtlas":Z
    .restart local v92    # "disableBluetooth":Z
    .restart local v93    # "disableLocation":Z
    .restart local v94    # "disableMedia":Z
    .restart local v95    # "disableNetwork":Z
    .restart local v96    # "disableNonCoreServices":Z
    .restart local v97    # "disableStorage":Z
    .restart local v98    # "disableSystemUI":Z
    .restart local v99    # "disableTelephony":Z
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v117    # "location":Lcom/android/server/LocationManagerService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v156    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v166    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_43
    move-object/from16 v25, v132

    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_25

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_44
    move-object/from16 v119, v120

    .end local v120    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_16

    :cond_45
    move-object/from16 v25, v132

    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4d
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    return-void
.end method
