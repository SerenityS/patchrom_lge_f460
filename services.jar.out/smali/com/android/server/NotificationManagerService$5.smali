.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 1236
    .local v10, "action":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1237
    .local v24, "queryRestart":Z
    const/16 v22, 0x0

    .line 1238
    .local v22, "queryRemove":Z
    const/16 v20, 0x0

    .line 1239
    .local v20, "packageChanged":Z
    const/4 v14, 0x1

    .line 1241
    .local v14, "cancelNotifications":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1247
    :cond_0
    const/16 v21, 0x0

    .line 1248
    .local v21, "pkgList":[Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v23, 0x1

    .line 1251
    .local v23, "queryReplace":Z
    :goto_0
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1252
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1284
    :goto_1
    const/4 v11, 0x0

    .line 1285
    .local v11, "anyListenersInvolved":Z
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_b

    .line 1286
    move-object/from16 v12, v21

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    aget-object v3, v12, v16

    .line 1287
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v24, :cond_a

    const/4 v6, 0x1

    :goto_3
    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 1291
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1292
    const/4 v11, 0x1

    .line 1286
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1248
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v11    # "anyListenersInvolved":Z
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v23    # "queryReplace":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    .line 1253
    .restart local v23    # "queryReplace":Z
    :cond_4
    if-eqz v24, :cond_5

    .line 1254
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 1256
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 1257
    .local v25, "uri":Landroid/net/Uri;
    if-nez v25, :cond_7

    .line 1416
    .end local v21    # "pkgList":[Ljava/lang/String;
    .end local v23    # "queryReplace":Z
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_4
    return-void

    .line 1260
    .restart local v21    # "pkgList":[Ljava/lang/String;
    .restart local v23    # "queryReplace":Z
    .restart local v25    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1261
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1264
    if-eqz v20, :cond_9

    .line 1267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1269
    .local v15, "enabled":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_8

    if-nez v15, :cond_9

    .line 1271
    :cond_8
    const/4 v14, 0x0

    .line 1281
    .end local v15    # "enabled":I
    :cond_9
    :goto_5
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .end local v21    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v3, v21, v2

    .restart local v21    # "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 1288
    .end local v25    # "uri":Landroid/net/Uri;
    .restart local v11    # "anyListenersInvolved":Z
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 1297
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_b
    if-eqz v11, :cond_6

    .line 1299
    if-nez v23, :cond_c

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    .line 1304
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access_updateNotificationPulse(Lcom/android/server/NotificationManagerService;)V

    goto :goto_4

    .line 1306
    .end local v11    # "anyListenersInvolved":Z
    .end local v21    # "pkgList":[Ljava/lang/String;
    .end local v23    # "queryReplace":Z
    :cond_d
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1312
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-nez v2, :cond_e

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1313
    :cond_e
    const-string v2, "NotificationService"

    const-string v4, "SCREEN ON"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mTimeOutFirstLightLED:Lcom/android/server/NotificationManagerService$TimeOutFirstLightLED;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$TimeOutFirstLightLED;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mTimeOutSecondLightLED:Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->firstTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->secondTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1321
    :cond_f
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1325
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-eqz v2, :cond_10

    .line 1326
    const-string v2, "NotificationService"

    const-string v4, "SCREEN OFF"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 1329
    const-string v2, "NotificationService"

    const-string v4, "LED ON in Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColor:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_4

    .line 1332
    :cond_10
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1333
    const-string v2, "NotificationService"

    const-string v4, "SCREEN OFF"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 1336
    const-string v2, "NotificationService"

    const-string v4, "LED ON in Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColorVZW:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_4

    .line 1341
    :cond_11
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$2402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1345
    :cond_12
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1346
    const-string v2, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1347
    .local v9, "userHandle":I
    if-ltz v9, :cond_6

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .line 1350
    .end local v9    # "userHandle":I
    :cond_13
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedOnEvenWhenLcdOn:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1355
    :cond_14
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1360
    :cond_15
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1361
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-eqz v2, :cond_17

    .line 1362
    const-string v2, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1363
    .local v13, "batteryStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    if-eq v2, v13, :cond_6

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iput v13, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    .line 1367
    const-string v2, "NotificationService"

    const-string v4, "LED ON in Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColor:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1370
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    .line 1371
    const-string v2, "NotificationService"

    const-string v4, "LED OFF in Not Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1376
    .end local v13    # "batteryStatus":I
    :cond_17
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1377
    const-string v2, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1378
    .restart local v13    # "batteryStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    if-eq v2, v13, :cond_6

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iput v13, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_18

    .line 1382
    const-string v2, "NotificationService"

    const-string v4, "LED ON in Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColorVZW:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1385
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    .line 1386
    const-string v2, "NotificationService"

    const-string v4, "LED OFF in Not Charging State when LedNotification is not exist."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1393
    .end local v13    # "batteryStatus":I
    :cond_19
    const-string v2, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1394
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-nez v2, :cond_1a

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1395
    :cond_1a
    const/16 v19, 0x0

    .line 1396
    .local v19, "mValue":I
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1397
    .local v18, "mChangedDbName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightStatus(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1401
    .end local v18    # "mChangedDbName":Ljava/lang/String;
    .end local v19    # "mValue":I
    :cond_1b
    const-string v2, "com.lge.intent.action.FIRST_FLASH_TIMEOUT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1402
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-nez v2, :cond_1c

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1403
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mTimeOutSecondLightLED:Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 1406
    :cond_1d
    const-string v2, "com.lge.intent.action.SECOND_FLASH_TIMEOUT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1407
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED:Z

    if-nez v2, :cond_1e

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_6

    .line 1408
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v2, v2, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 1410
    const-string v2, "NotificationService"

    const-string v4, "LED ON in Charging State when LedNotification is finished."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColor:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_4

    .line 1273
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v21    # "pkgList":[Ljava/lang/String;
    .restart local v23    # "queryReplace":Z
    .restart local v25    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    goto/16 :goto_5
.end method
