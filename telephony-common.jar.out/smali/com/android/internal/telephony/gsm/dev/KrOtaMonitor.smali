.class public Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;
.super Ljava/lang/Object;
.source "KrOtaMonitor.java"


# static fields
.field private static final INTENT_OTA_IN_SERVICE:Ljava/lang/String; = "com.lge.intent.action.OTA_IN_SERVICE"

.field private static final INTENT_OTA_NO_SERVICE:Ljava/lang/String; = "com.lge.intent.action.OTA_NO_SERVICE"

.field private static final INTENT_REJECT_CAUSE:Ljava/lang/String; = "com.lge.intent.action.REJECTE_CAUSE"

.field private static final LOG_TAG:Ljava/lang/String; = "KrOtaMonitor"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPrevServiceStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPrevServiceStatus:Z

    .line 25
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 26
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "KrOtaMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Monitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 31
    return-void
.end method

.method isOtaRunningOrRequired()Z
    .locals 5

    .prologue
    .line 35
    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 36
    .local v2, "isOtaRunning":Z
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    .local v0, "isKtCard":Z
    const-string v3, "ril.card_provisioned"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 39
    .local v1, "isNotProvisioned":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaRunningOrRequired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->log(Ljava/lang/String;)V

    .line 41
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method notifyRejectCause(IIII)V
    .locals 2
    .param p1, "srv_status"    # I
    .param p2, "mmCause"    # I
    .param p3, "gmmCause"    # I
    .param p4, "statusId"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.REJECTE_CAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mmReject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "gmmReject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "servicestate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "ril.gsm.reject_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method notifyServiceStateIfNeeded(Z)V
    .locals 4
    .param p1, "inservice"    # Z

    .prologue
    .line 48
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPrevServiceStatus:Z

    if-ne p1, v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->isOtaRunningOrRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPrevServiceStatus:Z

    .line 57
    if-eqz p1, :cond_2

    .line 58
    const-string v0, "com.lge.intent.action.OTA_IN_SERVICE"

    .line 68
    .local v0, "action":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->log(Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v0, "com.lge.intent.action.OTA_NO_SERVICE"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1
.end method
