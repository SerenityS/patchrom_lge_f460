.class public Lcom/lge/telephony/LGServiceState;
.super Ljava/lang/Object;
.source "LGServiceState.java"


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x3

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LGServiceState"

.field private static sInstance:Lcom/lge/telephony/LGServiceState;


# instance fields
.field private mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;
    .locals 3
    .param p0, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 52
    const-class v1, Lcom/lge/telephony/LGServiceState;

    monitor-enter v1

    :try_start_0
    const-string v0, "LGServiceState"

    const-string v2, "You are using ServiceState for LG API"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/lge/telephony/LGServiceState;

    invoke-direct {v0}, Lcom/lge/telephony/LGServiceState;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    .line 58
    :cond_0
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/LGServiceState;->setServiceState(Landroid/telephony/ServiceState;)V

    .line 60
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRoamingType(Landroid/telephony/ServiceState;)I
    .locals 2
    .param p0, "st"    # Landroid/telephony/ServiceState;

    .prologue
    .line 124
    const/4 v1, 0x1

    .line 125
    .local v1, "rvalue":I
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 127
    .local v0, "roamingIndcation":I
    sparse-switch v0, :sswitch_data_0

    .line 156
    const/4 v1, 0x3

    .line 158
    :goto_0
    return v1

    .line 130
    :sswitch_0
    const/4 v1, 0x1

    .line 131
    goto :goto_0

    .line 153
    :sswitch_1
    const/4 v1, 0x2

    .line 154
    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4a -> :sswitch_1
        0x7c -> :sswitch_1
        0x7d -> :sswitch_1
        0x7e -> :sswitch_1
        0x9d -> :sswitch_1
        0x9e -> :sswitch_1
        0x9f -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc5 -> :sswitch_1
        0xc6 -> :sswitch_1
        0xe4 -> :sswitch_1
        0xe5 -> :sswitch_1
        0xe6 -> :sswitch_1
        0xe7 -> :sswitch_1
        0xe8 -> :sswitch_1
        0xe9 -> :sswitch_1
        0xea -> :sswitch_1
        0xeb -> :sswitch_1
    .end sparse-switch
.end method

.method public static isCdmaFormat(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 171
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEhrpd(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 187
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, ""

    return-object v0
.end method

.method public getDataRoaming()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public getVoiceRoaming()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setServiceState(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    .line 41
    return-void
.end method
