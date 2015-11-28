.class public final Lcom/lge/uicc/IccTools;
.super Ljava/lang/Object;
.source "IccTools.java"


# static fields
.field protected static final APP_FAM_3GPP:I = 0x1

.field protected static final APP_FAM_3GPP2:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mRils:[Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected static broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ss"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p2, :cond_0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->logd(Ljava/lang/String;)V

    :goto_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static broadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    sget-object v0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "broadcastIntent: fails"

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected static broadcastIntent(Ljava/lang/String;)V
    .locals 1
    .param p0, "intentString"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected static broadcastStickyIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastStickyIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->logd(Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method protected static getApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "family"    # I

    .prologue
    invoke-static {p0}, Lcom/lge/uicc/IccTools;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplication: card==null, slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "getContext: not ready!!"

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "family"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/lge/uicc/IccTools;->getApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileHandler: app==null, family="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getRIL(I)Lcom/android/internal/telephony/RIL;
    .locals 2
    .param p0, "subid"    # I

    .prologue
    sget-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRIL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): not ready!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getSlots()I
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    if-nez v0, :cond_0

    const-string v0, "getSlots: not ready!!"

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    array-length v0, v0

    goto :goto_0
.end method

.method public static getSubId(Ljava/lang/Object;)I
    .locals 2
    .param p0, "ci"    # Ljava/lang/Object;

    .prologue
    instance-of v1, p0, Lcom/android/internal/telephony/RIL;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "getSubId: unknown CommandsInterface !!"

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 9
    .param p0, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lcom/lge/uicc/IccTools;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string v4, "com.codeaurora.telephony.msim.MSimUiccController"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "controller":Ljava/lang/Class;
    const-string v4, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "instance":Ljava/lang/Object;
    const-string v4, "getUiccCard"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "controller":Ljava/lang/Class;
    .end local v2    # "instance":Ljava/lang/Object;
    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    .local v3, "thr":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiccCard: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    .end local v3    # "thr":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    move-object v4, v5

    goto :goto_0

    :cond_1
    if-nez p0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .end local v0    # "controller":Lcom/android/internal/telephony/uicc/UiccController;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiccCard: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isMultiSimEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    if-nez v2, :cond_0

    const-string v0, "isMultiSimEnabled: not ready!!"

    invoke-static {v0}, Lcom/lge/uicc/IccTools;->loge(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    array-length v2, v2

    if-le v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccTools] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccTools] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static setContext(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sput-object p0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    check-cast p1, Lcom/android/internal/telephony/RIL;

    .end local p1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    aput-object p1, v0, v1

    sput-object v0, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method protected static setContext(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sput-object p0, Lcom/lge/uicc/IccTools;->mContext:Landroid/content/Context;

    check-cast p1, [Lcom/android/internal/telephony/RIL;

    .end local p1    # "cis":[Lcom/android/internal/telephony/CommandsInterface;
    check-cast p1, [Lcom/android/internal/telephony/RIL;

    sput-object p1, Lcom/lge/uicc/IccTools;->mRils:[Lcom/android/internal/telephony/RIL;

    return-void
.end method
