.class public Lcom/lge/uicc/IccStateHandler;
.super Landroid/os/Handler;
.source "IccStateHandler.java"


# static fields
.field private static final EVENT_HIDDEN_PIN_DONE:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3

.field private static final EVENT_RIL_GET_SIM_STATUS_DONE:I = 0x1

.field private static final EVENT_SHOW_SIM_PIN_VIEW:I = 0x4

.field private static mInstances:[Lcom/lge/uicc/IccStateHandler;


# instance fields
.field private hidden_reset_checked:Z

.field private last_modem_reboot_count:I

.field private mHiddenSupplyPinRunning:Z

.field private mMessageQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mSubId:I


# direct methods
.method private constructor <init>(I)V
    .locals 4
    .param p1, "subid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/lge/uicc/IccStateHandler;->mRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput v1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    iput-boolean v1, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    iput-boolean v1, p0, Lcom/lge/uicc/IccStateHandler;->hidden_reset_checked:Z

    iput v1, p0, Lcom/lge/uicc/IccStateHandler;->last_modem_reboot_count:I

    const-string v1, "create instance"

    invoke-direct {p0, v1}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    iput p1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    iget v1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/RIL;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/lge/uicc/IccTools;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "show_sim_pin_view"

    const/4 v2, 0x4

    invoke-static {v1, p0, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private clearAllCardAppConfig()V
    .locals 7

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .local v1, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APPTYPE_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "app":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".state.perso"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".aid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pin1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pin2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_0
    return-void
.end method

.method private static getInstance(Lcom/android/internal/telephony/RIL;)Lcom/lge/uicc/IccStateHandler;
    .locals 2
    .param p0, "ril"    # Lcom/android/internal/telephony/RIL;

    .prologue
    invoke-static {p0}, Lcom/lge/uicc/IccTools;->getSubId(Ljava/lang/Object;)I

    move-result v0

    .local v0, "subid":I
    sget-object v1, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    array-length v1, v1

    if-lt v1, v0, :cond_0

    sget-object v1, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static handleGetIccCardStatus(Lcom/android/internal/telephony/RIL;Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p0, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {p0}, Lcom/lge/uicc/IccStateHandler;->getInstance(Lcom/android/internal/telephony/RIL;)Lcom/lge/uicc/IccStateHandler;

    move-result-object v0

    .local v0, "ish":Lcom/lge/uicc/IccStateHandler;
    if-nez v0, :cond_0

    .end local p1    # "msg":Landroid/os/Message;
    :goto_0
    return-object p1

    .restart local p1    # "msg":Landroid/os/Message;
    :cond_0
    const-string v1, "handleGetIccCardStatus"

    invoke-direct {v0, v1}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/lge/uicc/IccStateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0
.end method

.method private hiddenSupplyPin(Lcom/android/internal/telephony/uicc/IccCardStatus;)Z
    .locals 12
    .param p1, "cardStatus"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v9, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v9}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v6

    .local v6, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hiddenpin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "pinData":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v9, v5

    if-ne v9, v11, :cond_0

    aget-object v0, v5, v7

    .local v0, "aid":Ljava/lang/String;
    aget-object v4, v5, v8

    .local v4, "pin":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v3, v9

    .local v3, "numApplications":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v9, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v1, v9, v2

    .local v1, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget-object v9, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v9, v10, :cond_3

    const-string v9, "null"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hiddenSupplyPin: aid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lge/uicc/IccStateHandler;->logp(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_pin1:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hiddenSupplyPin: fail: remaining_count_pin1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_pin1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lge/uicc/IccStateHandler;->loge(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v11}, Lcom/lge/uicc/IccStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v4, v0, v7}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move v7, v8

    goto/16 :goto_0
.end method

.method private isHiddenReset()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/lge/uicc/IccStateHandler;->hidden_reset_checked:Z

    if-nez v6, :cond_0

    iput-boolean v5, p0, Lcom/lge/uicc/IccStateHandler;->hidden_reset_checked:Z

    const-string v6, "ro.lge.hiddenreset"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "hiddenreset occured "

    invoke-direct {p0, v6}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    const/4 v3, 0x0

    .local v3, "modem_reboot_cnt":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/module/subsystem_restart/parameters/modem_reboot_cnt"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-lez v3, :cond_2

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->last_modem_reboot_count:I

    if-eq v3, v6, :cond_2

    const-string v6, "modem crash arise! hidden reset flag on! "

    invoke-direct {p0, v6}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iput v3, p0, Lcom/lge/uicc/IccStateHandler;->last_modem_reboot_count:I

    goto :goto_0

    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v6, "can not check modem_reboot_cnt"

    invoke-direct {p0, v6}, Lcom/lge/uicc/IccStateHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/uicc/IccStateHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "hidden reset not occured "

    invoke-direct {p0, v5}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccStateHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccStateHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private logp(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccStateHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    return-void
.end method

.method public static processSolicited(Lcom/android/internal/telephony/RIL;IILjava/lang/Object;)V
    .locals 5
    .param p0, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p1, "request"    # I
    .param p2, "error"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lcom/lge/uicc/IccStateHandler;->getInstance(Lcom/android/internal/telephony/RIL;)Lcom/lge/uicc/IccStateHandler;

    move-result-object v2

    .local v2, "ish":Lcom/lge/uicc/IccStateHandler;
    if-nez v2, :cond_0

    .end local p3    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p3    # "result":Ljava/lang/Object;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    move-object v0, p3

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I

    invoke-direct {v2, p2, v3}, Lcom/lge/uicc/IccStateHandler;->saveHiddenPin(I[I)V

    const-string v3, "pin1"

    const/4 v4, 0x0

    check-cast p3, [I

    .end local p3    # "result":Ljava/lang/Object;
    check-cast p3, [I

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSolicited : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/uicc/IccStateHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_1
    :try_start_1
    move-object v0, p3

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I

    invoke-direct {v2, p2, v3}, Lcom/lge/uicc/IccStateHandler;->saveHiddenPin(I[I)V

    check-cast p3, [I

    .end local p3    # "result":Ljava/lang/Object;
    check-cast p3, [I

    invoke-direct {v2, p2, p3}, Lcom/lge/uicc/IccStateHandler;->updateFacilityLock(I[I)V

    goto :goto_0

    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_2
    const-string v3, "pin2"

    const/4 v4, 0x0

    check-cast p3, [I

    .end local p3    # "result":Ljava/lang/Object;
    check-cast p3, [I

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V

    goto :goto_0

    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_3
    const-string v3, "pin1"

    const/4 v4, 0x1

    check-cast p3, [I

    .end local p3    # "result":Ljava/lang/Object;
    check-cast p3, [I

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V

    goto :goto_0

    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_4
    const-string v3, "pin2"

    const/4 v4, 0x1

    check-cast p3, [I

    .end local p3    # "result":Ljava/lang/Object;
    check-cast p3, [I

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_2
        0x2b -> :sswitch_1
    .end sparse-switch
.end method

.method private returnGetIccCardStatus(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    if-eqz v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnGetIccCardStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .local v1, "m":Landroid/os/Message;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    :cond_2
    const-string v3, "returnGetIccCardStatus"

    invoke-direct {p0, v3}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private saveHiddenPin(I[I)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "result"    # [I

    .prologue
    const-string v1, "hiddenpin"

    iget v2, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hiddenpin":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "hiddenpin"

    iget v2, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    const-string v1, "saveHiddenPin"

    invoke-direct {p0, v1}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hiddenpin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static setup()V
    .locals 4

    .prologue
    sget-object v2, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v1

    .local v1, "slots":I
    new-array v2, v1, [Lcom/lge/uicc/IccStateHandler;

    sput-object v2, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/lge/uicc/IccStateHandler;->mInstances:[Lcom/lge/uicc/IccStateHandler;

    new-instance v3, Lcom/lge/uicc/IccStateHandler;

    invoke-direct {v3, v0}, Lcom/lge/uicc/IccStateHandler;-><init>(I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCardAppConfig(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;)V
    .locals 8
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .prologue
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPTYPE_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "app":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPSTATE_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "state":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PINSTATE_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pin1_state":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PINSTATE_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "pin2_state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v4, v5, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".state.perso"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v7, :cond_1

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PERSOSUBSTATE_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v5, v6, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".aid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    iget-object v6, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pin1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_pin1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_puk1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pin2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_pin2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->remaining_count_puk2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pin1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pin1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pin2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pin2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/uicc/IccStateHandler;->logp(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private updateFacilityLock(I[I)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v4, 0x0

    const-string v2, "facilitylock"

    iget v3, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "facility":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "facilitylock"

    iget v3, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "usim.pin1"

    iget v3, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, "ENABLED_BLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "blocked":Z
    const-string v2, "pin1"

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V

    goto :goto_0

    .end local v0    # "blocked":Z
    :cond_2
    const-string v2, "FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "usim.pin2"

    iget v3, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, "ENABLED_BLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "blocked":Z
    const-string v2, "pin2"

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/lge/uicc/IccStateHandler;->updateRemainingCount(Ljava/lang/String;ZI[I)V

    goto :goto_0
.end method

.method private updateRemainingCount(Ljava/lang/String;ZI[I)V
    .locals 11
    .param p1, "pin_type"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "error"    # I
    .param p4, "result"    # [I

    .prologue
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    aget v8, p4, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "remainCount":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRemainingCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p2, :cond_2

    const-string v8, "PUK"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : remain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v2, v3

    .local v1, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "APPTYPE_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "app":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "key":Ljava/lang/String;
    iget v8, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v4, v8}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "pinData":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "arr$":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "pinData":[Ljava/lang/String;
    :cond_2
    const-string v8, "PIN"

    goto :goto_0

    .restart local v0    # "app":Ljava/lang/String;
    .restart local v1    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v2    # "arr$":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v3    # "i$":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "pinData":[Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    const/4 v8, 0x2

    aput-object v7, v6, v8

    :goto_3
    iget v8, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    aput-object v7, v6, v8

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, "ar":Landroid/os/AsyncResult;
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v11, "EVENT_RIL_GET_SIM_STATUS_DONE"

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v11, :cond_2

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error in RIL_REQUEST_GET_SIM_STATUS : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/lge/uicc/IccStateHandler;->returnGetIccCardStatus(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .local v3, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v7, v11

    .local v7, "numApplications":I
    iget-boolean v11, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    if-eqz v11, :cond_5

    iget-object v11, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v11, :cond_3

    iget-object v12, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    iget-object v11, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Message;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hiddenSupplyPin Running "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v11, "hiddenSupplyPin complete."

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    :cond_4
    const-string v11, "load IccCardStatus..."

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CARDSTATE_"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "card_state":Ljava/lang/String;
    const-string v11, "card_state"

    iget v12, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v11, v12, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/lge/uicc/IccStateHandler;->clearAllCardAppConfig()V

    const-string v11, "card_app_count"

    iget v12, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_8

    iget-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v0, v11, v5

    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {p0, v0}, Lcom/lge/uicc/IccStateHandler;->updateCardAppConfig(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v4    # "card_state":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v7, :cond_6

    iget-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v11, v12, :cond_7

    :cond_6
    if-ge v5, v7, :cond_4

    invoke-direct {p0}, Lcom/lge/uicc/IccStateHandler;->isHiddenReset()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0, v3}, Lcom/lge/uicc/IccStateHandler;->hiddenSupplyPin(Lcom/android/internal/telephony/uicc/IccCardStatus;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v12, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    iget-object v11, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Message;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hiddenSupplyPin start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/IccStateHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/lge/uicc/IccStateHandler;->mHiddenSupplyPinRunning:Z

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .restart local v4    # "card_state":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v2}, Lcom/lge/uicc/IccStateHandler;->returnGetIccCardStatus(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v3    # "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    .end local v4    # "card_state":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "numApplications":I
    :pswitch_1
    const-string v11, "EVENT_HIDDEN_PIN_DONE"

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    const-string v11, "Hidden PIN verify OK"

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    :goto_3
    const-string v12, "hiddenpin_state"

    iget v13, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_a

    const-string v11, "SUCCESS"

    :goto_4
    invoke-static {v12, v13, v11}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    iget v11, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v11}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v9

    .local v9, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v9, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v9    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hidden PIN verify Fails : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v11, "FAIL"

    goto :goto_4

    :pswitch_2
    iget v11, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v11}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v9

    .restart local v9    # "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    .local v6, "newRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v11, p0, Lcom/lge/uicc/IccStateHandler;->mRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v11, v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RADIO_"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "radio_state":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_RADIO_STATE_CHANGED : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lge/uicc/IccStateHandler;->mRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v11, "radio_state"

    iget v12, p0, Lcom/lge/uicc/IccStateHandler;->mSubId:I

    invoke-static {v11, v12, v8}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    .end local v6    # "newRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v8    # "radio_state":Ljava/lang/String;
    .end local v9    # "ril":Lcom/android/internal/telephony/RIL;
    :pswitch_3
    const-string v11, "EVENT_SHOW_SIM_PIN_VIEW"

    invoke-direct {p0, v11}, Lcom/lge/uicc/IccStateHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_0

    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "subscription":I
    const-string v11, "proxy.sim_state"

    invoke-static {v11, v10}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "app_state":Ljava/lang/String;
    const-string v11, "PIN_REQUIRED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "LOCKED"

    const-string v12, "PIN"

    invoke-static {v11, v12, v10}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    :goto_5
    const-string v11, "show_sim_pin_view"

    invoke-static {v11, v10}, Lcom/lge/uicc/LGUICC;->removeConfig(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    const-string v11, "PUK_REQUIRED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "LOCKED"

    const-string v12, "PUK"

    invoke-static {v11, v12, v10}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
