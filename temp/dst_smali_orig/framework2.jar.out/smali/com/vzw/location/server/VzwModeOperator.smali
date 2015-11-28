.class public abstract Lcom/vzw/location/server/VzwModeOperator;
.super Ljava/lang/Object;
.source "VzwModeOperator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeOperator"


# instance fields
.field protected mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

.field protected mMode:I

.field protected mMpcHost:Ljava/net/InetAddress;

.field protected mMpcHostAddress:Ljava/lang/String;

.field protected mMpcHostPort:I

.field protected mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    iput-object v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHost:Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHostAddress:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHostPort:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mMode:I

    new-instance v0, Lcom/vzw/location/server/VzwModeNetworkInfo;

    invoke-direct {v0}, Lcom/vzw/location/server/VzwModeNetworkInfo;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    return-void
.end method


# virtual methods
.method public getNetworkInfo()Lcom/vzw/location/server/VzwModeNetworkInfo;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    iget-object v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHost:Ljava/net/InetAddress;

    iput-object v1, v0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    iget-object v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHostAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    iget v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMode:I

    iput v1, v0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMode:I

    iget-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    iget v1, p0, Lcom/vzw/location/server/VzwModeOperator;->mMpcHostPort:I

    iput v1, v0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    const-string v0, "VzwModeOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getNetworkInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwModeNetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/server/VzwModeOperator;->mNetworkInfo:Lcom/vzw/location/server/VzwModeNetworkInfo;

    return-object v0
.end method

.method public abstract verifyModeAccesibility()Z
.end method
