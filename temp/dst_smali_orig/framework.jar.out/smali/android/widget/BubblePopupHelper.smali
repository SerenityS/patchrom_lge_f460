.class public Landroid/widget/BubblePopupHelper;
.super Ljava/lang/Object;
.source "BubblePopupHelper.java"


# static fields
.field private static final CHARACTERISTICS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BubblePopupHelper"

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static sHelper:Landroid/widget/BubblePopupHelper;


# instance fields
.field mIsShowingBubblePopup:Z

.field mView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/BubblePopupHelper;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/BubblePopupHelper;->CHARACTERISTICS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    return-void
.end method

.method private checkParentVisibility(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x10202b4

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .local v1, "target":Landroid/view/View;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/BubblePopupHelper;->checkParentVisibility(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private isFloatingWindow()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "isFloatingWindow":Z
    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d2

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FrameView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowingAnyBubblePopup()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    iget-boolean v0, v0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "BubblePopupHelper"

    const-string v1, "BubblePopupHelper has no instance. we don\'t ready to call isShowingBubblePopup and just return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowingAnyBubblePopup(Z)V
    .locals 3
    .param p0, "showing"    # Z

    .prologue
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    invoke-virtual {v0, p0}, Landroid/widget/BubblePopupHelper;->setShowingBubblePopup(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BubblePopupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BubblePopupHelper has no instance. Hence we cannot call setShowingBubblePopup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkIsPossibleHideBubblePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isShowingBubblePopup()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIsPossibleShowBubblePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isShowingBubblePopup()Z

    move-result v0

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/widget/BubblePopupHelper;->checkParentVisibility(Landroid/view/View;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Landroid/widget/BubblePopupHelper;->isFloatingWindow()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getImeOptions()I

    move-result v3

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getImeOptions()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    sget-object v3, Landroid/widget/BubblePopupHelper;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    const-string v3, "tablet"

    sget-object v4, Landroid/widget/BubblePopupHelper;->CHARACTERISTICS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isShowingBubblePopup()Z
    .locals 3

    .prologue
    const-string v0, "BubblePopupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowingBubblePopup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    return v0
.end method

.method public setShowingBubblePopup(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    return-void
.end method

.method public setTargetHelper()V
    .locals 0

    .prologue
    sput-object p0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    return-void
.end method
