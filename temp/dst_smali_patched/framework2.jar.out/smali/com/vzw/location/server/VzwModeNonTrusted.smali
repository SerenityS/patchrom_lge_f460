.class public Lcom/vzw/location/server/VzwModeNonTrusted;
.super Lcom/vzw/location/server/VzwModeOperator;
.source "VzwModeNonTrusted.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeNonTrusted"


# direct methods
.method public constructor <init>(ILcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/server/VzwModeOperator;-><init>()V

    const-string v0, "VzwModeNonTrusted"

    const-string v1, "[VzwModeNonTrusted] Create Object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    iget-object v0, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iput p1, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMode:I

    const-string v0, "VzwModeNonTrusted"

    const-string v1, "[VzwModeByPass] Create Object finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public verifyModeAccesibility()Z
    .locals 5

    .prologue
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Start verifyModeAccesibility()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "result":Z
    iget v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMode:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Error. Unknown Cases."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "lps.vzwlbs.net"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: lps.vzwlbs.net/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] Exception occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v2, "vzwlpsstg.telecomsys.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: vzwlpsstg.telecomsys.com/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] Exception occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Legacy(Non-Trusted)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    :try_start_4
    const-string v2, "lps.vzwlbs.net"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: lps.vzwlbs.net/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_2
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Legacy(Non-Trusted)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] Exception occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
