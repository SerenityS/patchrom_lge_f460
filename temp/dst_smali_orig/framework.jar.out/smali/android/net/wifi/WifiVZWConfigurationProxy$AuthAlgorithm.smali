.class public Landroid/net/wifi/WifiVZWConfigurationProxy$AuthAlgorithm;
.super Ljava/lang/Object;
.source "WifiVZWConfigurationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiVZWConfigurationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthAlgorithm"
.end annotation


# static fields
.field public static final LEAP:I = 0x2

.field public static final OPEN:I = 0x0

.field public static final SHARED:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "auth_alg"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHARED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LEAP"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiVZWConfigurationProxy$AuthAlgorithm;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
