.class Lcom/lge/internal/gesture/LgeSlideAsideImpl;
.super Lcom/lge/internal/gesture/LgeSlideAside;
.source "LgeSlideAsideImpl.java"


# static fields
.field private static final ACTION_SLIDE_ASIDE_IN:Ljava/lang/String; = "com.lge.slideaside.pin.in"

.field private static final ACTION_SLIDE_ASIDE_OUT:Ljava/lang/String; = "com.lge.slideaside.pin.out"

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private final FINGERCOUNT:I

.field private final LEFTSIDE:I

.field private final RIGHTSIDE:I

.field private SLIDEASIDE_DRAGSLOP:F

.field private SLIDEASIE_VERTICAL_DRAGSLOP:F

.field private final WAITFORPRESS:I

.field private final WAITSIDE:I

.field final configuration:Landroid/view/ViewConfiguration;

.field private mContext:Landroid/content/Context;

.field private final mCurrentCoodrinateX:[F

.field private final mCurrentCoodrinateY:[F

.field private mDirection:I

.field private mDirectionChange:Z

.field private final mFirstPointerX:[F

.field private final mFirstPointerY:[F

.field private mFirstTime:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mReadyToSubmitEvent:Z

.field private mSlideAside:Z

.field private mSlideasideMove:Z

.field private mTouchSlop:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mXdpi:F

.field private final mYdpi:F

.field overTouchSlop:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "Context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/lge/internal/gesture/LgeSlideAside;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->RIGHTSIDE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->LEFTSIDE:I

    iput v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->WAITSIDE:I

    iput v2, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->FINGERCOUNT:I

    const/16 v0, 0x1ea

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->WAITFORPRESS:I

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mReadyToSubmitEvent:Z

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->overTouchSlop:Z

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerX:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerY:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateX:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateY:[F

    iput v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityScale:F

    iput-object p1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mXdpi:F

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mYdpi:F

    iget v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mXdpi:F

    invoke-static {v0}, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->getPixelPerMm(F)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->SLIDEASIDE_DRAGSLOP:F

    iget v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mYdpi:F

    invoke-static {v0}, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->getPixelPerMm(F)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->SLIDEASIE_VERTICAL_DRAGSLOP:F

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->configuration:Landroid/view/ViewConfiguration;

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mTouchSlop:I

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mMinimumVelocity:I

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mMaximumVelocity:I

    return-void
.end method


# virtual methods
.method public PlayWithInputEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->initVelocityTrackerIfNotExists()V

    iget-object v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v8, :cond_0

    iput-boolean v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstTime:J

    :cond_1
    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_5

    :cond_2
    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->onFlick(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->runSlideAside()V

    :cond_3
    iput-boolean v6, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    iput-boolean v6, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->initialize()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mReadyToSubmitEvent:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    if-nez v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, "currTime":J
    iget-wide v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-wide v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1ea

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v8, :cond_6

    iput-boolean v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mReadyToSubmitEvent:Z

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_4

    iget-object v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerX:[F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerY:[F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "currTime":J
    .end local v3    # "i":I
    :cond_6
    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mReadyToSubmitEvent:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v8, :cond_8

    invoke-virtual {p0, p1}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->checkTouchSlopDirection(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    :cond_7
    :goto_2
    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->runSlideAside()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v4, v8, :cond_7

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->onFlick(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    iget-boolean v4, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideAside:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->runSlideAside()V

    goto/16 :goto_0

    :cond_9
    iput-boolean v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    invoke-virtual {p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->initialize()V

    goto :goto_2
.end method

.method checkTouchSlopDirection(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .local v6, "mSumOfDeltaX":F
    const/4 v7, 0x0

    .local v7, "mSumOfDeltaY":F
    const/4 v0, 0x0

    .local v0, "deltaX":I
    const/4 v1, 0x0

    .local v1, "deltaY":I
    const/4 v3, 0x0

    .local v3, "mSameSignal":Z
    const/4 v10, 0x3

    new-array v8, v10, [I

    .local v8, "mslopX":[I
    const/4 v10, 0x3

    new-array v9, v10, [I

    .local v9, "mslopY":[I
    const/4 v10, 0x3

    new-array v4, v10, [I

    .local v4, "mSignalX":[I
    const/4 v10, 0x3

    new-array v5, v10, [I

    .local v5, "mSignalY":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x3

    if-ge v2, v10, :cond_0

    iget-object v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateX:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateY:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerX:[F

    aget v10, v10, v2

    iget-object v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateX:[F

    aget v11, v11, v2

    sub-float/2addr v10, v11

    float-to-int v0, v10

    iget-object v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerY:[F

    aget v10, v10, v2

    iget-object v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateY:[F

    aget v11, v11, v2

    sub-float/2addr v10, v11

    float-to-int v1, v10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aput v10, v8, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aput v10, v9, v2

    int-to-float v10, v0

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v2

    int-to-float v10, v1

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    aput v10, v5, v2

    aget v10, v8, v2

    int-to-float v10, v10

    add-float/2addr v6, v10

    aget v10, v9, v2

    int-to-float v10, v10

    add-float/2addr v7, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    aget v10, v8, v10

    iget v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mTouchSlop:I

    if-le v10, v11, :cond_3

    const/4 v10, 0x1

    aget v10, v8, v10

    iget v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mTouchSlop:I

    if-le v10, v11, :cond_3

    const/4 v10, 0x2

    aget v10, v8, v10

    iget v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mTouchSlop:I

    if-le v10, v11, :cond_3

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->overTouchSlop:Z

    iget-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->overTouchSlop:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    aget v10, v4, v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    aget v10, v4, v10

    if-lez v10, :cond_4

    const/4 v10, 0x2

    aget v10, v4, v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    iput v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    :cond_1
    :goto_1
    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    aget v10, v5, v10

    const/4 v11, 0x2

    aget v11, v5, v11

    if-ne v10, v11, :cond_2

    const/4 v10, 0x2

    aget v10, v5, v10

    const/4 v11, 0x0

    aget v11, v5, v11

    if-ne v10, v11, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    if-eqz v10, :cond_8

    const/high16 v10, 0x40400000    # 3.0f

    div-float v10, v6, v10

    iget v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->SLIDEASIDE_DRAGSLOP:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    aget v10, v4, v10

    if-gez v10, :cond_5

    const/4 v10, 0x1

    aget v10, v4, v10

    if-gez v10, :cond_5

    const/4 v10, 0x2

    aget v10, v4, v10

    if-gez v10, :cond_5

    const/4 v10, -0x1

    iput v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    iput v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const/high16 v10, 0x40400000    # 3.0f

    div-float v10, v7, v10

    iget v11, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->SLIDEASIE_VERTICAL_DRAGSLOP:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirectionChange:Z

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_2
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mReadyToSubmitEvent:Z

    iput-boolean v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mSlideasideMove:Z

    iput v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerY:[F

    iget-object v2, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mFirstPointerX:[F

    aput v3, v2, v0

    aput v3, v1, v0

    iget-object v1, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateY:[F

    iget-object v2, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mCurrentCoodrinateX:[F

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onFlick(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .local v2, "mCount":I
    const/4 v1, -0x1

    .local v1, "mActivePointerId":I
    const/4 v3, 0x0

    .local v3, "mSumVelocityX":I
    const/4 v4, 0x0

    .local v4, "mSumVelocityY":I
    iget-object v5, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    iget v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    iget v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mVelocityScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-int v6, v3, v2

    .local v6, "xVelocity":I
    div-int v7, v4, v2

    .local v7, "yVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mMinimumVelocity:I

    if-le v8, v9, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method runSlideAside()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "SlideAside"

    const-string v1, "Slide Aside is running to the right"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.lge.slideaside.pin.out"

    invoke-static {v0, v1}, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SlideAside"

    const-string v1, "Slide Aside is running to the left"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.lge.slideaside.pin.in"

    invoke-static {v0, v1}, Lcom/lge/internal/gesture/LgeGestureBasicUtil;->broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
