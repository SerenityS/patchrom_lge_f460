.class final Landroid/view/ViewRootImpl$TouchFilterImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TouchFilterImeInputStage"
.end annotation


# instance fields
.field mTouchEventFilter:Landroid/view/TouchEventFilter;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 5
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    const/4 v1, 0x1

    iput-object p1, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/TouchEventFilter;

    iget-object v3, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v2, v3}, Landroid/view/TouchEventFilter;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getIsPenSupport()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .local v0, "mIsPenSupport":Z
    :goto_0
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsPenSupport: :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    # invokes: Landroid/view/ViewRootImpl;->isPenPalmTouchEventFilterPkg()Z
    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v2, Landroid/view/PenPalmFilter;

    iget-object v3, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/PenPalmFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    .end local v0    # "mIsPenSupport":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "mIsPenSupport":Z
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v3, Landroid/view/PalmRejectionFilter;

    iget-object v4, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/PalmRejectionFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v3, Landroid/view/GripSuppressionFilter;

    iget-object v4, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/GripSuppressionFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v2, v1}, Landroid/view/TouchEventFilter;->convertId(Z)V

    goto :goto_1
.end method

.method private processMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/TouchEventFilter;->filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v1}, Landroid/view/TouchEventFilter;->needToSendAdditionalEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v3, v1, v4, v2, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v3

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    iput-object v1, v3, Landroid/view/ViewRootImpl;->savedEventForSplit:Landroid/view/MotionEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 23
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_HIDENAV:Z

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    const/16 v22, 0x63

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    const/16 v22, 0x7db

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/high16 v4, 0x40a00000    # 5.0f

    .local v4, "blockSizeDp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v6, v21, v22

    .local v6, "densityRatio":F
    const/high16 v21, 0x40a00000    # 5.0f

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-int v5, v0

    .local v5, "blockSizePixel":I
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .local v15, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v7, v15, Landroid/graphics/Point;->y:I

    .local v7, "displayHeight":I
    iget v8, v15, Landroid/graphics/Point;->x:I

    .local v8, "displayWidth":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v9, Landroid/view/MotionEvent;

    .local v9, "event":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .local v3, "action":I
    if-nez v3, :cond_8

    if-ge v8, v7, :cond_2

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v22, v7, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v21, 0x1

    # setter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1302(Z)Z

    const/16 v21, 0x1

    .end local v3    # "action":I
    .end local v4    # "blockSizeDp":F
    .end local v5    # "blockSizePixel":I
    .end local v6    # "densityRatio":F
    .end local v7    # "displayHeight":I
    .end local v8    # "displayWidth":I
    .end local v9    # "event":Landroid/view/MotionEvent;
    .end local v15    # "size":Landroid/graphics/Point;
    :goto_0
    return v21

    .restart local v3    # "action":I
    .restart local v4    # "blockSizeDp":F
    .restart local v5    # "blockSizePixel":I
    .restart local v6    # "densityRatio":F
    .restart local v7    # "displayHeight":I
    .restart local v8    # "displayWidth":I
    .restart local v9    # "event":Landroid/view/MotionEvent;
    .restart local v15    # "size":Landroid/graphics/Point;
    :cond_2
    if-le v8, v7, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v21, 0x1

    # setter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1302(Z)Z

    const/16 v21, 0x1

    goto :goto_0

    :cond_3
    const/16 v21, 0x1

    # setter for: Landroid/view/ViewRootImpl;->edgeBlockDisabled:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1402(Z)Z

    .end local v3    # "action":I
    .end local v4    # "blockSizeDp":F
    .end local v5    # "blockSizePixel":I
    .end local v6    # "densityRatio":F
    .end local v7    # "displayHeight":I
    .end local v8    # "displayWidth":I
    .end local v9    # "event":Landroid/view/MotionEvent;
    .end local v15    # "size":Landroid/graphics/Point;
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v9, Landroid/view/MotionEvent;

    .restart local v9    # "event":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    .local v16, "source":I
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .restart local v3    # "action":I
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .local v2, "NI":I
    and-int/lit8 v21, v16, 0x2

    if-nez v21, :cond_d

    const/4 v13, 0x1

    .local v13, "invalidSource":Z
    :goto_2
    const/4 v14, 0x0

    .local v14, "invalidToolType":Z
    const/4 v11, 0x0

    .local v11, "invalidAction":Z
    const/4 v12, 0x0

    .local v12, "invalidEvent":Z
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x1

    :goto_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v2, :cond_e

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    .local v17, "toolType":I
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    .local v20, "z":F
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v18

    .local v18, "wM":F
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v19

    .local v19, "wm":F
    if-nez v17, :cond_5

    const/4 v14, 0x1

    :cond_5
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v21

    if-nez v21, :cond_7

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v21

    if-nez v21, :cond_7

    :cond_6
    const/4 v12, 0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v2    # "NI":I
    .end local v10    # "i":I
    .end local v11    # "invalidAction":Z
    .end local v12    # "invalidEvent":Z
    .end local v13    # "invalidSource":Z
    .end local v14    # "invalidToolType":Z
    .end local v16    # "source":I
    .end local v17    # "toolType":I
    .end local v18    # "wM":F
    .end local v19    # "wm":F
    .end local v20    # "z":F
    .restart local v4    # "blockSizeDp":F
    .restart local v5    # "blockSizePixel":I
    .restart local v6    # "densityRatio":F
    .restart local v7    # "displayHeight":I
    .restart local v8    # "displayWidth":I
    .restart local v15    # "size":Landroid/graphics/Point;
    :cond_8
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v3, v0, :cond_b

    # getter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1300()Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_9
    # getter for: Landroid/view/ViewRootImpl;->edgeBlockDisabled:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1400()Z

    move-result v21

    if-nez v21, :cond_4

    if-ge v8, v7, :cond_a

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v22, v7, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    const/16 v21, 0x1

    # setter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1302(Z)Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_a
    if-le v8, v7, :cond_4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    const/16 v21, 0x1

    # setter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1302(Z)Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    # getter for: Landroid/view/ViewRootImpl;->edgeBlockDisabled:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1400()Z

    move-result v21

    if-nez v21, :cond_c

    # getter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1300()Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x0

    # setter for: Landroid/view/ViewRootImpl;->edgeDowned:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1302(Z)Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_c
    const/16 v21, 0x0

    # setter for: Landroid/view/ViewRootImpl;->edgeBlockDisabled:Z
    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->access$1402(Z)Z

    goto/16 :goto_1

    .end local v4    # "blockSizeDp":F
    .end local v5    # "blockSizePixel":I
    .end local v6    # "densityRatio":F
    .end local v7    # "displayHeight":I
    .end local v8    # "displayWidth":I
    .end local v15    # "size":Landroid/graphics/Point;
    .restart local v2    # "NI":I
    .restart local v16    # "source":I
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2

    .restart local v11    # "invalidAction":Z
    .restart local v12    # "invalidEvent":Z
    .restart local v13    # "invalidSource":Z
    .restart local v14    # "invalidToolType":Z
    :pswitch_1
    const/4 v11, 0x0

    goto/16 :goto_3

    .restart local v10    # "i":I
    :cond_e
    if-nez v13, :cond_f

    if-nez v14, :cond_f

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewRootImpl$TouchFilterImeInputStage;->processMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v21

    goto/16 :goto_0

    .end local v2    # "NI":I
    .end local v3    # "action":I
    .end local v9    # "event":Landroid/view/MotionEvent;
    .end local v10    # "i":I
    .end local v11    # "invalidAction":Z
    .end local v12    # "invalidEvent":Z
    .end local v13    # "invalidSource":Z
    .end local v14    # "invalidToolType":Z
    .end local v16    # "source":I
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
