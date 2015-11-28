.class public Lcom/android/internal/telephony/LGSrvccManager;
.super Ljava/lang/Object;
.source "LGSrvccManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGSrvccManager"

.field private static mSrvccConfConn:Lcom/android/internal/telephony/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LGSrvccManager;->mSrvccConfConn:Lcom/android/internal/telephony/Connection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfConn(Lcom/android/internal/telephony/Connection;)Z
    .locals 2
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .end local p0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return v0

    .restart local p0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/LGSrvccManager;->mSrvccConfConn:Lcom/android/internal/telephony/Connection;

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/android/internal/telephony/gsm/SrvccConnection;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/internal/telephony/gsm/SrvccConnection;

    .end local p0    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-interface {p0}, Lcom/android/internal/telephony/gsm/SrvccConnection;->isConfConn()Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "LGSrvccManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setConfConn(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    sput-object p0, Lcom/android/internal/telephony/LGSrvccManager;->mSrvccConfConn:Lcom/android/internal/telephony/Connection;

    return-void
.end method
