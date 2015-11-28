.class public Lcom/vzw/location/server/VzwModeDeterminer;
.super Ljava/lang/Object;
.source "VzwModeDeterminer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeDeterminer"


# instance fields
.field private mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

.field private mInitialized:Z

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V
    .locals 2
    .param p1, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mInitialized:Z

    iput-object v1, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mProvider:Ljava/lang/String;

    const-string v0, "VzwModeDeterminer"

    const-string v1, "[VzwModeDeterminer] Object create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/vzw/location/server/VzwModeDeterminer;->init(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mInitialized:Z

    return-void
.end method

.method private init(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)Z
    .locals 3
    .param p1, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "VzwModeDeterminer"

    const-string v2, "[init] start init."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mInitialized:Z

    iput-object p1, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    iput-object p2, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mProvider:Ljava/lang/String;

    iget-object v1, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "VzwModeDeterminer"

    const-string v2, "[init] init failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const-string v0, "VzwModeDeterminer"

    const-string v1, "[init] finished init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCommercialNonTrusted(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCommercialTrusted(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLegacy(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTestNonTrusted(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTestTrusted(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertMode()Lcom/vzw/location/server/VzwModeOperator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] start converting."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mInitialized:Z

    if-nez v3, :cond_0

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] init was failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    .local v2, "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v0

    .local v0, "mAppId":J
    const-wide/32 v3, 0x50000000

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-wide/32 v3, 0x50000008

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] ByPass R3 staging."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeByPass;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v5, v3}, Lcom/vzw/location/server/VzwModeByPass;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    :goto_1
    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] covert finished."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x2000000c

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] ByPass R3 production."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeByPass;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v6, v3}, Lcom/vzw/location/server/VzwModeByPass;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwModeDeterminer;->isCommercialTrusted(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Commercial Trusted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v5, v3}, Lcom/vzw/location/server/VzwModeTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwModeDeterminer;->isTestTrusted(J)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Test Trusted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v6, v3}, Lcom/vzw/location/server/VzwModeTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwModeDeterminer;->isCommercialNonTrusted(J)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Commercial Non-Trusted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeNonTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v5, v3}, Lcom/vzw/location/server/VzwModeNonTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto :goto_1

    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwModeDeterminer;->isTestNonTrusted(J)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Test Non-Trusted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeNonTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    iget-object v3, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v6, v3}, Lcom/vzw/location/server/VzwModeNonTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto :goto_1

    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwModeDeterminer;->isLegacy(J)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Legacy (Non-Trusted)."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeNonTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v3, v4}, Lcom/vzw/location/server/VzwModeNonTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto/16 :goto_1

    :cond_8
    const-string v3, "VzwModeDeterminer"

    const-string v4, "[convertMode] Default."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vzw/location/server/VzwModeTrusted;

    .end local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/vzw/location/server/VzwModeDeterminer;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2, v3, v4}, Lcom/vzw/location/server/VzwModeTrusted;-><init>(ILcom/vzw/location/VzwGpsConfigInit;)V

    .restart local v2    # "mObject":Lcom/vzw/location/server/VzwModeOperator;
    goto/16 :goto_1
.end method
