.class public Landroid/widget/TouchFlickNoti;
.super Ljava/lang/Object;
.source "TouchFlickNoti.java"


# static fields
.field private static COORDINATE_DIRECTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchFlickNoti"

.field private static mLastY:I


# instance fields
.field private final FLICKMAXVELOCITY:I

.field private final LIMIT_Y_GAP:I

.field private final MARK_INVERSION:I

.field private final WEIGHTED_VELOCITY:I

.field private final X_Y_VELOCITY_GAP:I

.field private mDensityScale:F

.field private mGapLast:F

.field private mYCoordinatesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sumDeltaY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    sput v0, Landroid/widget/TouchFlickNoti;->COORDINATE_DIRECTION:I

    const/4 v0, 0x0

    sput v0, Landroid/widget/TouchFlickNoti;->mLastY:I

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "densityScale"    # F

    .prologue
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Landroid/widget/TouchFlickNoti;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1
    .param p1, "densityScale"    # F
    .param p2, "gap_between_last_before"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x320

    iput v0, p0, Landroid/widget/TouchFlickNoti;->X_Y_VELOCITY_GAP:I

    const/16 v0, 0x258

    iput v0, p0, Landroid/widget/TouchFlickNoti;->WEIGHTED_VELOCITY:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TouchFlickNoti;->MARK_INVERSION:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/widget/TouchFlickNoti;->FLICKMAXVELOCITY:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/TouchFlickNoti;->LIMIT_Y_GAP:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TouchFlickNoti;->sumDeltaY:I

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Landroid/widget/TouchFlickNoti;->mGapLast:F

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    iput p1, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    int-to-float v0, p2

    iput v0, p0, Landroid/widget/TouchFlickNoti;->mGapLast:F

    return-void
.end method


# virtual methods
.method public OnAccumulateYCoordinate(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Landroid/widget/TouchFlickNoti;->COORDINATE_DIRECTION:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    sget v0, Landroid/widget/TouchFlickNoti;->mLastY:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sput p1, Landroid/widget/TouchFlickNoti;->mLastY:I

    :cond_1
    return-void
.end method

.method public OnGetFlickVelocity(II)I
    .locals 6
    .param p1, "mXvelocity"    # I
    .param p2, "mYvelocity"    # I

    .prologue
    const/high16 v5, 0x44fa0000    # 2000.0f

    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v1, v2

    .local v1, "tempSignal":I
    iget-object v2, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, p2

    .end local p2    # "mYvelocity":I
    .local v0, "mYvelocity":I
    :goto_0
    return v0

    .end local v0    # "mYvelocity":I
    .restart local p2    # "mYvelocity":I
    :cond_1
    iget v2, p0, Landroid/widget/TouchFlickNoti;->sumDeltaY:I

    iget-object v3, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-gt v2, v3, :cond_2

    move v0, p2

    .end local p2    # "mYvelocity":I
    .restart local v0    # "mYvelocity":I
    goto :goto_0

    .end local v0    # "mYvelocity":I
    .restart local p2    # "mYvelocity":I
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x320

    if-le v2, v3, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_3

    move v0, p2

    .end local p2    # "mYvelocity":I
    .restart local v0    # "mYvelocity":I
    goto :goto_0

    .end local v0    # "mYvelocity":I
    .restart local p2    # "mYvelocity":I
    :cond_3
    mul-int v2, p2, p2

    mul-int v3, p1, p1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p2, v2

    const/high16 v2, 0x44160000    # 600.0f

    iget v3, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr p2, v2

    iget v2, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-lt p2, v2, :cond_4

    iget v2, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    mul-float/2addr v2, v5

    float-to-int p2, v2

    :cond_4
    mul-int/2addr p2, v1

    :cond_5
    move v0, p2

    .end local p2    # "mYvelocity":I
    .restart local v0    # "mYvelocity":I
    goto :goto_0
.end method

.method public onClear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    sput v0, Landroid/widget/TouchFlickNoti;->mLastY:I

    return-void
.end method

.method public onGetFlickDirection(I)I
    .locals 14
    .param p1, "vectorVelocity"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    .local v1, "directionUPCount":I
    const/4 v0, 0x0

    .local v0, "directionDownCount":I
    const/4 v9, 0x0

    .local v9, "up":Z
    const/4 v2, 0x0

    .local v2, "down":Z
    int-to-float v10, p1

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v8, v10

    .local v8, "signal":I
    const/4 v7, 0x0

    .local v7, "rememberFirstSignal":I
    const/4 v3, 0x0

    .local v3, "gotSignal":I
    const/4 v5, 0x0

    .local v5, "ifFindFirstSignal":Z
    const/4 v6, 0x0

    .local v6, "keepSignal":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_5

    iget-object v10, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    invoke-virtual {v10, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, p0, Landroid/widget/TouchFlickNoti;->mYCoordinatesList:Ljava/util/LinkedList;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v3, v11, v10

    iget v10, p0, Landroid/widget/TouchFlickNoti;->sumDeltaY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/TouchFlickNoti;->sumDeltaY:I

    int-to-float v10, v3

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpg-float v10, v10, v13

    if-gez v10, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_1
    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    const/4 v5, 0x1

    move v7, v3

    if-gez v7, :cond_3

    const/4 v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    int-to-float v10, v3

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v10, v10, v13

    if-lez v10, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-lez v7, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_1

    int-to-float v10, v3

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    int-to-float v11, v7

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    float-to-int v11, v11

    if-eq v10, v11, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/TouchFlickNoti;->mGapLast:F

    iget v12, p0, Landroid/widget/TouchFlickNoti;->mDensityScale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    if-lt v10, v11, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    if-le v0, v1, :cond_8

    if-eqz p1, :cond_7

    if-gez v8, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TouchFlickNoti;->onUpdateFlickDirection(I)I

    move-result p1

    :cond_6
    :goto_3
    return p1

    :cond_7
    const-string v10, "TouchFlickNoti"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CAPP_TOUCH_FLICK: DOWN vectorVelocity:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " signal:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-ge v0, v1, :cond_a

    if-eqz p1, :cond_9

    if-lez v8, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TouchFlickNoti;->onUpdateFlickDirection(I)I

    move-result p1

    goto :goto_3

    :cond_9
    const-string v10, "TouchFlickNoti"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CAPP_TOUCH_FLICK: UP vectorVelocity:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " signal:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_b

    if-gez v8, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/TouchFlickNoti;->onUpdateFlickDirection(I)I

    move-result p1

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_6

    if-lez v8, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/TouchFlickNoti;->onUpdateFlickDirection(I)I

    move-result p1

    goto :goto_3
.end method

.method public onUpdateFlickDirection(I)I
    .locals 1
    .param p1, "updateVelocity"    # I

    .prologue
    mul-int/lit8 v0, p1, -0x1

    return v0
.end method
