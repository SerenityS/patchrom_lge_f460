.class public final enum Landroid/net/LinkCapabilities$FlowState;
.super Ljava/lang/Enum;
.source "LinkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/LinkCapabilities$FlowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LinkCapabilities$FlowState;

.field public static final enum ACTIVATED:Landroid/net/LinkCapabilities$FlowState;

.field public static final enum DISABLED:Landroid/net/LinkCapabilities$FlowState;

.field public static final enum ENABLED:Landroid/net/LinkCapabilities$FlowState;

.field public static final enum INACTIVE:Landroid/net/LinkCapabilities$FlowState;

.field public static final enum SUSPENDED:Landroid/net/LinkCapabilities$FlowState;


# instance fields
.field mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Landroid/net/LinkCapabilities$FlowState;

    const-string v1, "INACTIVE"

    const-string v2, "INACTIVE"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/LinkCapabilities$FlowState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->INACTIVE:Landroid/net/LinkCapabilities$FlowState;

    .line 178
    new-instance v0, Landroid/net/LinkCapabilities$FlowState;

    const-string v1, "ACTIVATED"

    const-string v2, "ACTIVATED"

    invoke-direct {v0, v1, v4, v2}, Landroid/net/LinkCapabilities$FlowState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->ACTIVATED:Landroid/net/LinkCapabilities$FlowState;

    .line 179
    new-instance v0, Landroid/net/LinkCapabilities$FlowState;

    const-string v1, "ENABLED"

    const-string v2, "ENABLED"

    invoke-direct {v0, v1, v5, v2}, Landroid/net/LinkCapabilities$FlowState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->ENABLED:Landroid/net/LinkCapabilities$FlowState;

    .line 180
    new-instance v0, Landroid/net/LinkCapabilities$FlowState;

    const-string v1, "SUSPENDED"

    const-string v2, "SUSPENDED"

    invoke-direct {v0, v1, v6, v2}, Landroid/net/LinkCapabilities$FlowState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->SUSPENDED:Landroid/net/LinkCapabilities$FlowState;

    .line 181
    new-instance v0, Landroid/net/LinkCapabilities$FlowState;

    const-string v1, "DISABLED"

    const-string v2, "DISABLED"

    invoke-direct {v0, v1, v7, v2}, Landroid/net/LinkCapabilities$FlowState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->DISABLED:Landroid/net/LinkCapabilities$FlowState;

    .line 176
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/LinkCapabilities$FlowState;

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->INACTIVE:Landroid/net/LinkCapabilities$FlowState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->ACTIVATED:Landroid/net/LinkCapabilities$FlowState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->ENABLED:Landroid/net/LinkCapabilities$FlowState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->SUSPENDED:Landroid/net/LinkCapabilities$FlowState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->DISABLED:Landroid/net/LinkCapabilities$FlowState;

    aput-object v1, v0, v7

    sput-object v0, Landroid/net/LinkCapabilities$FlowState;->$VALUES:[Landroid/net/LinkCapabilities$FlowState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkCapabilities$FlowState;->mState:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Landroid/net/LinkCapabilities$FlowState;->mState:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LinkCapabilities$FlowState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Landroid/net/LinkCapabilities$FlowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities$FlowState;

    return-object v0
.end method

.method public static values()[Landroid/net/LinkCapabilities$FlowState;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/net/LinkCapabilities$FlowState;->$VALUES:[Landroid/net/LinkCapabilities$FlowState;

    invoke-virtual {v0}, [Landroid/net/LinkCapabilities$FlowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LinkCapabilities$FlowState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/LinkCapabilities$FlowState;->mState:Ljava/lang/String;

    return-object v0
.end method
