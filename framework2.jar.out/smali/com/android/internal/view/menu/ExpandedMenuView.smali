.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# instance fields
.field private mAnimations:I

.field final mMaxHeightMajor:Landroid/util/TypedValue;

.field final mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 91
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 53
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 59
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 68
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 96
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_2

    const/4 v2, 0x1

    .line 98
    .local v2, "isPortrait":Z
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 100
    .local v1, "heightMode":I
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v0

    .line 103
    .local v0, "height":I
    const/4 v4, 0x0

    .line 105
    .local v4, "measure":Z
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 107
    .local v6, "tv":Landroid/util/TypedValue;
    :goto_1
    if-eq v1, v9, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-eqz v7, :cond_0

    .line 109
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 110
    invoke-virtual {v6, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v3, v7

    .line 116
    .local v3, "max":I
    :goto_2
    if-le v0, v3, :cond_0

    .line 117
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 118
    const/4 v4, 0x1

    .line 122
    .end local v3    # "max":I
    :cond_0
    if-eqz v4, :cond_1

    .line 123
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 125
    :cond_1
    return-void

    .line 96
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "isPortrait":Z
    .end local v4    # "measure":Z
    .end local v6    # "tv":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "isPortrait":Z
    .restart local v4    # "measure":Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMaxHeightMajor:Landroid/util/TypedValue;

    goto :goto_1

    .line 111
    .restart local v6    # "tv":Landroid/util/TypedValue;
    :cond_4
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    .line 112
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v3, v7

    .restart local v3    # "max":I
    goto :goto_2

    .line 114
    .end local v3    # "max":I
    :cond_5
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v3    # "max":I
    goto :goto_2
.end method
