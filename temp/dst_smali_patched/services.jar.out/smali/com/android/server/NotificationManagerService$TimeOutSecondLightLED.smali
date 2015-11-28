.class Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeOutSecondLightLED"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x2710

    const/16 v8, 0xbb8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->secondTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v2, "NotificationService"

    const-string v3, "TimeOutSecondLightLED Alarm Set NOTIFICATION_LED_TIMEOUT_SECOND_VZW"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .end local v0    # "now":J
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "now":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    const-wide/32 v3, 0x927c0

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->secondTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v2, "NotificationService"

    const-string v3, "TimeOutSecondLightLED Alarm Set NOTIFICATION_LED_TIMEOUT_SECOND"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "NotificationService"

    const-string v3, "TimeOutSecondLightLED mAlarmManager NULL ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_ONECOLORLED_VZW:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColorVZW:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$TimeOutSecondLightLED;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->NotiLEDColor:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_1
.end method
