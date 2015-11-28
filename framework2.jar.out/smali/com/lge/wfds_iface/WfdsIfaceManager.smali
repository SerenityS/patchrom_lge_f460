.class public Lcom/lge/wfds_iface/WfdsIfaceManager;
.super Ljava/lang/Object;
.source "WfdsIfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsIfaceManager"

.field private static sP2pWfdsExtIface:Lcom/lge/wfds_iface/P2pWfdsExtIface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 12
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/wfds_iface/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/wfds_iface/P2pWfdsExtIface;

    .line 15
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/com.lge.wfds.jar"

    const-class v4, Lcom/lge/wfds_iface/WfdsIfaceManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 26
    .local v0, "cloader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v3, "com.lge.wfds.P2pWfdsExt"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    .local v2, "p2pServiceExtClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds_iface/P2pWfdsExtIface;

    sput-object v3, Lcom/lge/wfds_iface/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/wfds_iface/P2pWfdsExtIface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v2    # "p2pServiceExtClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WfdsIfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getP2pWfdsExtIface()Lcom/lge/wfds_iface/P2pWfdsExtIface;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/wfds_iface/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/wfds_iface/P2pWfdsExtIface;

    return-object v0
.end method

.method public static setP2pWfdsExtIface(Lcom/lge/wfds_iface/P2pWfdsExtIface;)V
    .locals 2
    .param p0, "iface"    # Lcom/lge/wfds_iface/P2pWfdsExtIface;

    .prologue
    .line 53
    const-string v0, "WfdsIfaceManager"

    const-string v1, "setP2pWfdsExtIface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sput-object p0, Lcom/lge/wfds_iface/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/wfds_iface/P2pWfdsExtIface;

    .line 55
    return-void
.end method
