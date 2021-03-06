.class public Landroid/net/wifi/NetworkManagementServiceProxy;
.super Ljava/lang/Object;
.source "NetworkManagementServiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceProxy"

.field private static getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

.field private static runClearNatRuleMethod:Ljava/lang/reflect/Method;

.field private static runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

.field private static runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static startVZWAccessPointMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mNwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-array v1, v13, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v1, v12

    .local v1, "getAssociatedIpHostnameWithMacParamType":[Ljava/lang/Class;
    new-array v5, v13, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v5, v12

    .local v5, "runSetNatForwardRuleParamType":[Ljava/lang/Class;
    new-array v2, v12, [Ljava/lang/Class;

    .local v2, "runClearNatRuleParamType":[Ljava/lang/Class;
    new-array v6, v14, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v12

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v6, v13

    .local v6, "runSetPortFilterRuleParamType":[Ljava/lang/Class;
    new-array v3, v12, [Ljava/lang/Class;

    .local v3, "runClearPortFilterRuleParamType":[Ljava/lang/Class;
    const/4 v10, 0x4

    new-array v7, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v12

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v13

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v14

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v7, v10

    .local v7, "runSetPortForwardRuleParamType":[Ljava/lang/Class;
    new-array v4, v12, [Ljava/lang/Class;

    .local v4, "runClearPortForwardRuleParamType":[Ljava/lang/Class;
    new-array v8, v14, [Ljava/lang/Class;

    const-class v10, Landroid/net/wifi/WifiConfiguration;

    aput-object v10, v8, v12

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v13

    .local v8, "startVZWAccessPointParamType":[Ljava/lang/Class;
    :try_start_0
    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "getAssociatedIpHostnameWithMac"

    invoke-virtual {v10, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runSetNatForwardRule"

    invoke-virtual {v10, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runClearNatRule"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runSetPortFilterRule"

    invoke-virtual {v10, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runClearPortFilterRule"

    invoke-virtual {v10, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runSetPortForwardRule"

    invoke-virtual {v10, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "runClearPortForwardRule"

    invoke-virtual {v10, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    const-class v10, Landroid/os/INetworkManagementService;

    const-string v11, "startVZWAccessPoint"

    invoke-virtual {v10, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "NetworkManagementServiceProxy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not implemented method : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v9

    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "NetworkManagementServiceProxy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to find NetworkManagementService"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v0, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string v0, "NetworkManagementServiceProxy"

    const-string v1, "Unable to connect to network management service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private convertQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    if-nez p1, :cond_0

    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private isAllowalldevices()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAssociatedIpHostnameWithMac(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v4, "NetworkManagementServiceProxy"

    const-string v5, "getAssociatedIpHostnameWithMac method isn\'t implemented yet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0
.end method

.method public runClearNatRule()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runClearNatRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runClearPortFilterRule()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runClearPortFilterRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runClearPortForwardRule()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runClearPortForwardRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runSetNatForwardRule(Ljava/lang/String;)V
    .locals 5
    .param p1, "iptablescmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v2, "NetworkManagementServiceProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSetNatForwardRule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "mNwService != null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_1
    return-void

    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "mNwService null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runSetNatForwardRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public runSetPortFilterRule(Ljava/lang/String;I)V
    .locals 4
    .param p1, "iptablescmd"    # Ljava/lang/String;
    .param p2, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runSetPortFilterRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "runSetPortForwardRule method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startVZWAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v2, "NetworkManagementServiceProxy"

    const-string v3, "startVZWAccessPoint method isn\'t implemented yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
