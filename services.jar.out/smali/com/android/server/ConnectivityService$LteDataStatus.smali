.class public final enum Lcom/android/server/ConnectivityService$LteDataStatus;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteDataStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$LteDataStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$LteDataStatus;

.field public static final enum connected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

.field public static final enum connecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

.field public static final enum disconnected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

.field public static final enum disconnecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2187
    new-instance v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    const-string v1, "connecting_4G"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$LteDataStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->connecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    new-instance v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    const-string v1, "connected_4G"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$LteDataStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->connected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    new-instance v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    const-string v1, "disconnecting_4G"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService$LteDataStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->disconnecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    new-instance v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    const-string v1, "disconnected_4G"

    invoke-direct {v0, v1, v5}, Lcom/android/server/ConnectivityService$LteDataStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->disconnected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    .line 2186
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/ConnectivityService$LteDataStatus;

    sget-object v1, Lcom/android/server/ConnectivityService$LteDataStatus;->connecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$LteDataStatus;->connected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ConnectivityService$LteDataStatus;->disconnecting_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/ConnectivityService$LteDataStatus;->disconnected_4G:Lcom/android/server/ConnectivityService$LteDataStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->$VALUES:[Lcom/android/server/ConnectivityService$LteDataStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$LteDataStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2186
    const-class v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$LteDataStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$LteDataStatus;
    .locals 1

    .prologue
    .line 2186
    sget-object v0, Lcom/android/server/ConnectivityService$LteDataStatus;->$VALUES:[Lcom/android/server/ConnectivityService$LteDataStatus;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$LteDataStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$LteDataStatus;

    return-object v0
.end method
