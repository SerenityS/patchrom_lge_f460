.class public Lcom/lge/vmware/VMwareUtils;
.super Ljava/lang/Object;
.source "VMwareUtils.java"


# static fields
.field private static final IMPORTANCE_FOREGROUND:I = 0x64

.field private static final IMPORTANCE_PERCEPTIBLE:I = 0x82

.field private static final IMPORTANCE_VISIBLE:I = 0xc8

.field private static final PKG_HWS:Ljava/lang/String; = "com.vmware.mvp.hws"

.field private static final PKG_MVP:Ljava/lang/String; = "com.vmware.mvp"

.field private static final POSTFIX_PKG_LOCKSCREEN_SWITCH_WIDGET:Ljava/lang/String; = ".widget.lockscreenswitch.Widget"

.field private static final SINGLETON:Lcom/lge/vmware/VMwareUtils;

.field private static final TAG:Ljava/lang/String; = "VMwareUtils"

.field private static final UIPROXY:Ljava/lang/String; = "com.vmware.mvp.hws.uiproxy"

.field private static final VMWARE_FEATURE_PROP:Ljava/lang/String; = "ro.lge.b2b.vmware"


# instance fields
.field private mIsVMwareSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/lge/vmware/VMwareUtils;

    invoke-direct {v0}, Lcom/lge/vmware/VMwareUtils;-><init>()V

    sput-object v0, Lcom/lge/vmware/VMwareUtils;->SINGLETON:Lcom/lge/vmware/VMwareUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    .line 65
    const-string v0, "ro.lge.b2b.vmware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    .line 66
    return-void
.end method

.method public static get()Lcom/lge/vmware/VMwareUtils;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/lge/vmware/VMwareUtils;->SINGLETON:Lcom/lge/vmware/VMwareUtils;

    return-object v0
.end method

.method private getRunningAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 169
    .local v0, "aMgr":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 173
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkVMware()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    return v0
.end method

.method public getWidgetComponentNames()[Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.vmware.mvp"

    const-string v4, "com.vmware.mvp.widget.lockscreenswitch.Widget"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.vmware.mvp.hws"

    const-string v4, "com.vmware.mvp.hws.widget.lockscreenswitch.Widget"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMvpInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, "r":Z
    iget-boolean v3, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    if-eqz v3, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vmware.mvp.hws"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x1

    .line 233
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "VMwareUtils"

    const-string v4, "VMware is not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRunning(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-boolean v1, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "com.vmware.mvp.hws.uiproxy"

    invoke-direct {p0, p1, v1}, Lcom/lge/vmware/VMwareUtils;->getRunningAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0
.end method

.method public isVisible(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    iget-boolean v1, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "com.vmware.mvp.hws.uiproxy"

    invoke-direct {p0, p1, v1}, Lcom/lge/vmware/VMwareUtils;->getRunningAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    .line 117
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v0, :cond_1

    .line 118
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x82

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x1

    .line 125
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
