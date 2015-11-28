.class Lcom/lge/internal/gesture/LgeGestureBasicUtil;
.super Ljava/lang/Object;
.source "LgeGestureBasicUtil.java"


# static fields
.field private static intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    .line 36
    sget-object v0, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v0, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 38
    return-void
.end method

.method static calculateSlope(FFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 19
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method static getDistance(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "x2"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F

    .prologue
    .line 23
    sub-float v0, p0, p1

    .line 24
    .local v0, "x":F
    sub-float v1, p2, p3

    .line 25
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method static getPixelPerMm(F)F
    .locals 5
    .param p0, "dpi"    # F

    .prologue
    .line 30
    float-to-double v1, p0

    const-wide v3, 0x4039666666666666L    # 25.4

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 31
    .local v0, "mPixelPerMM":F
    return v0
.end method
