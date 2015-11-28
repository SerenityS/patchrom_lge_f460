.class public Lcom/vzw/location/server/VzwModeNetworkInfo;
.super Ljava/lang/Object;
.source "VzwModeNetworkInfo.java"


# instance fields
.field public mMode:I

.field public mMpcHost:Ljava/net/InetAddress;

.field public mMpcHostAddress:Ljava/lang/String;

.field public mMpcHostPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostAddress:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMode:I

    return-void
.end method


# virtual methods
.method public setInfo(Ljava/net/InetAddress;Ljava/lang/String;II)V
    .locals 0
    .param p1, "mpcHost"    # Ljava/net/InetAddress;
    .param p2, "mpcHostAddress"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "mode"    # I

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    iput-object p2, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostAddress:Ljava/lang/String;

    iput p3, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    iput p4, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/VzwModeNetworkInfo/ MpcHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MpcHostAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MpcHostPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "toString":Ljava/lang/String;
    return-object v0
.end method
