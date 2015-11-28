.class public Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;
.super Ljava/lang/Thread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadIPtable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2026
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "juhwan. thread 2"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2029
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2031
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$202(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    .line 2036
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2037
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "********** DUMP IPTABLE INFO **********"

    const-string v4, "iptablesinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "<----- iptables -L ----->"

    const-string v4, "iptablesinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2040
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "<----- iptables -t nat -L ----->"

    const-string v4, "iptablesinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t nat -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2042
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "<----- iptables -t mangle -L ----->"

    const-string v4, "iptablesinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t mangle -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2044
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "<----- iptables -t raw -L ----->"

    const-string v4, "iptablesinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t raw -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    :cond_1
    :goto_0
    return-void

    .line 2047
    :catch_0
    move-exception v1

    .line 2048
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "failed for logging iptables"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
