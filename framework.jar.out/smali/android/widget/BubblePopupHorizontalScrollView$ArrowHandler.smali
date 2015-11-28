.class Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
.super Landroid/os/Handler;
.source "BubblePopupHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubblePopupHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BubblePopupHorizontalScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;Landroid/widget/BubblePopupHorizontalScrollView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BubblePopupHorizontalScrollView;
    .param p2, "x1"    # Landroid/widget/BubblePopupHorizontalScrollView$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v3, v5}, Landroid/widget/BubblePopupHorizontalScrollView;->access$002(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 49
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->drawArrow()V

    .line 50
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 51
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v3, v4}, Landroid/widget/BubblePopupHorizontalScrollView;->access$002(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 55
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$200(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 56
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$300(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 57
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v3, v5}, Landroid/widget/BubblePopupHorizontalScrollView;->access$202(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 59
    :cond_1
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$400(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 60
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideRightArrow()V
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$500(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 61
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v3, v5}, Landroid/widget/BubblePopupHorizontalScrollView;->access$402(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 68
    .local v0, "oldX":I
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->getScrollY()I

    move-result v1

    .line 70
    .local v1, "oldY":I
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 71
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    iget-object v4, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v4}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/BubblePopupHorizontalScrollView;->scrollTo(II)V

    .line 72
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->invalidate()V

    .line 73
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 74
    .local v2, "updateMsg":Landroid/os/Message;
    iget-object v3, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
