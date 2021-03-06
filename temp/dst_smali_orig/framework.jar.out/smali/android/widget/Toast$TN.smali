.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mLayoutModified:Z

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Toast$TN;->mLayoutModified:Z

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast$TN;->handleHide()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_0
    const-string v15, "window"

    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    .local v9, "gravity":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v15, v9, 0x7

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_1
    and-int/lit8 v15, v9, 0x70

    const/16 v16, 0x70

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    sget-boolean v15, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Toast$TN;->mLayoutModified:Z

    if-nez v15, :cond_4

    # getter for: Landroid/widget/Toast;->mToastCallerMap:Ljava/util/WeakHashMap;
    invoke-static {}, Landroid/widget/Toast;->access$000()Ljava/util/WeakHashMap;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    const/4 v3, 0x0

    .local v3, "ctx":Landroid/content/Context;
    :goto_0
    if-eqz v3, :cond_4

    instance-of v15, v3, Landroid/app/Activity;

    if-eqz v15, :cond_4

    move-object v15, v3

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .local v4, "decor":Landroid/view/View;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .local v12, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v12}, Landroid/view/View;->isWindowSplit(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget v15, v12, Landroid/graphics/Rect;->top:I

    if-eqz v15, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v8, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v8, "displayWidth":I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v7, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v7, "displayHeight":I
    iget v15, v12, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v11, v15, v16

    .local v11, "mid":I
    const v13, 0x426aae14    # 58.67f

    .local v13, "underMargin":F
    const/high16 v5, 0x424c0000    # 51.0f

    .local v5, "defaultHeight":F
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v15, v15

    const/high16 v16, 0x43200000    # 160.0f

    div-float v6, v15, v16

    .local v6, "densityRatio":F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    if-nez v15, :cond_7

    const/high16 v15, 0x424c0000    # 51.0f

    mul-float/2addr v15, v6

    float-to-int v10, v15

    .local v10, "heightOfView":I
    :goto_1
    const v15, 0x426aae14    # 58.67f

    mul-float/2addr v15, v6

    float-to-int v14, v15

    .local v14, "underMarginPixel":I
    if-ge v8, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v16, 0x31

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    mul-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v10

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v16, v11, v10

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    .end local v3    # "ctx":Landroid/content/Context;
    .end local v4    # "decor":Landroid/view/View;
    .end local v5    # "defaultHeight":F
    .end local v6    # "densityRatio":F
    .end local v7    # "displayHeight":I
    .end local v8    # "displayWidth":I
    .end local v10    # "heightOfView":I
    .end local v11    # "mid":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "underMargin":F
    .end local v14    # "underMarginPixel":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v9    # "gravity":I
    :cond_5
    return-void

    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v9    # "gravity":I
    :cond_6
    # getter for: Landroid/widget/Toast;->mToastCallerMap:Ljava/util/WeakHashMap;
    invoke-static {}, Landroid/widget/Toast;->access$000()Ljava/util/WeakHashMap;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    move-object v3, v15

    goto/16 :goto_0

    .restart local v3    # "ctx":Landroid/content/Context;
    .restart local v4    # "decor":Landroid/view/View;
    .restart local v5    # "defaultHeight":F
    .restart local v6    # "densityRatio":F
    .restart local v7    # "displayHeight":I
    .restart local v8    # "displayWidth":I
    .restart local v11    # "mid":I
    .restart local v12    # "rect":Landroid/graphics/Rect;
    .restart local v13    # "underMargin":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v10

    goto :goto_1

    .restart local v10    # "heightOfView":I
    .restart local v14    # "underMarginPixel":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v17

    add-int v16, v16, v17

    add-int v17, v14, v10

    sub-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method public hide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
