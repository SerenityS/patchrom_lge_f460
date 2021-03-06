.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsEdged:Z

    if-eqz v0, :cond_3

    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsEdged:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-void
.end method

.method public updatePosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .local v1, "offset":I
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .local v3, "selectionStart":I
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-nez v4, :cond_2

    if-gt v1, v3, :cond_0

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v6}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .local v2, "selectionEnd":I
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-ne v2, v4, :cond_3

    if-eq v3, v1, :cond_4

    :cond_3
    if-ne v3, v2, :cond_8

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-ne v4, v1, :cond_8

    :cond_4
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mMoveLeftToRight:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-nez v4, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v1, v4, :cond_7

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_7
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    :cond_8
    if-le v3, v2, :cond_9

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-lt v4, v1, :cond_9

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-nez v4, :cond_9

    invoke-virtual {v0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    :cond_9
    if-ge v3, v2, :cond_a

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-gt v4, v1, :cond_a

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_a

    invoke-virtual {v0, v6}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-ne v2, v4, :cond_b

    if-ge v3, v1, :cond_b

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_b

    if-le v3, v2, :cond_b

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-ge v4, v1, :cond_b

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mMoveLeftToRight:Z

    if-eqz v4, :cond_c

    :cond_b
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-ne v2, v4, :cond_0

    if-le v3, v1, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsCrossed:Z

    if-nez v4, :cond_0

    if-ge v3, v2, :cond_0

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    if-le v4, v1, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mMoveLeftToRight:Z

    if-eqz v4, :cond_0

    :cond_c
    iget v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    goto/16 :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    return-void
.end method
