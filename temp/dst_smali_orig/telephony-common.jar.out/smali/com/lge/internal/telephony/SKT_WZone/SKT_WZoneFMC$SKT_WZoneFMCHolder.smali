.class final Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$SKT_WZoneFMCHolder;
.super Ljava/lang/Object;
.source "SKT_WZoneFMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SKT_WZoneFMCHolder"
.end annotation


# static fields
.field static final SKT_WZONEFMC:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;-><init>(Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$1;)V

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$SKT_WZoneFMCHolder;->SKT_WZONEFMC:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
