.class Lcom/android/internal/telephony/dataconnection/DcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .local v11, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v1, "com.lge.android.intent.action.ACTION_EHRPD_TIMER_EXPIRED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "[IMS_AFW] !!!!!!!! EVENT_EHRPD_TIMER_EXPIRED !!!!!!!!!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsPdnBlockedInEhrpd:Z
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$002(Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mEhrpdIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .local v12, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mEhrpdIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mEhrpdIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$102(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .end local v12    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "ehrpdTimerExpired"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.lge.android.intent.action.ACTION_IMS_POWER_OFF_DELAY_EXPIRED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "[IMS_AFW] !!!!!!!! IMS_POWER_OFF_DELAY_EXPIRED !!!!!!!!!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->deregiAlarmState:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$302(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregiDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .restart local v12    # "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregiDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregiDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$402(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .end local v12    # "am":Landroid/app/AlarmManager;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->waitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] Clean up : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->waitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->waitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    :cond_4
    const-string v1, "lge.intent.action.LTE_NETWORK_SUPPORTED_INFO"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "VoPS_Support"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "EPDN_Support"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] mVolteSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEPDNSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->updateEmergencyInfo(Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "lge.intent.action.LTE_NETWORK_SIB_INFO"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "Emer_Attach_Support"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "EPDN_Barring"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "Emer_Camped_CID"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "Emer_Camped_TAC"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] mEmerAttachSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEPDNBarring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmerCampedCID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmerCampedTAC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->updateEmergencyInfo(Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "lge.intent.action.DATA_EMERGENCY_FAILED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "EMC_FailCause"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] mEmcFailCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->updateEmergencyInfo(Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "lge.intent.action.LTE_STATE_INFO"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "LteStateInfo"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "LteDetachCause"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] mLteStateInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLteDetachCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mVolteSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNSupport:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerAttachSupport:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEPDNBarring:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedCID:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmerCampedTAC:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmcFailCause:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteStateInfo:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteDetachCause:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->updateEmergencyInfo(Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;)V

    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->reattachForcelyAfterODB()V

    goto/16 :goto_0

    :cond_9
    const-string v1, "android.intent.action.ACTION_DELAY_MODE_CHANGE_FOR_IMS"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, " !!!!!!!! ACTION_DELAY_MODE_CHANGE_FOR_IMS !!!!!!!!!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->modeChangeAlarmState:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDelayModeChangeforIms:Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .restart local v12    # "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDelayModeChangeforIms:Landroid/app/PendingIntent;

    invoke-virtual {v12, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDelayModeChangeforIms:Landroid/app/PendingIntent;

    .end local v12    # "am":Landroid/app/AlarmManager;
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->changePreferrredNetworkMode(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "com.lge.phone.action.REQUEST_EMERGENCY_ATTACH"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "[IMS_AFW] Get com.lge.phone.action.REQUEST_EMERGENCY_ATTACH"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v3, 0x42802

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRrcEstCauseForEmergency(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "com.kddi.android.cpa_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_enable"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_enable:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_dun"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dun:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_enable:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_send_result:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dun:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_apn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_user:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_authType"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_authType:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_dns1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_dns2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns2:Ljava/lang/String;

    const-string v1, "ril.btdun.dns1"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ril.btdun.dns2"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.btdun.dns1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ril.btdun.dns2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_dns2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "cpa_PackageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_PackageName:Ljava/lang/String;

    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->CPAChanged()V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_send_result:Z

    const-string v1, "ril.btdun.dns1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ril.btdun.dns2"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_apn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_user:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_authType:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_PackageName:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v1, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->cpa_enable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .local v14, "msg":Landroid/os/Message;
    const/16 v1, 0x400

    iput v1, v14, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v14    # "msg":Landroid/os/Message;
    :cond_10
    const-string v1, "com.kddi.android.cpa_test_btdun_on"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, "intent_temp":Landroid/content/Intent;
    const-string v1, "cpa_enable"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "cpa_dun"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "cpa_apn"

    const-string v2, "bt-dun"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cpa_user"

    const-string v2, "song"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cpa_password"

    const-string v2, "babo"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cpa_authType"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "cpa_dns1"

    const-string v2, "1.1.1.1"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cpa_dns2"

    const-string v2, "2.2.2.2"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cpa_PackageName"

    const-string v2, "com.android.phone"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v13    # "intent_temp":Landroid/content/Intent;
    :cond_11
    const-string v1, "com.kddi.android.cpa_test_btdun_off"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v13    # "intent_temp":Landroid/content/Intent;
    const-string v1, "cpa_enable"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
