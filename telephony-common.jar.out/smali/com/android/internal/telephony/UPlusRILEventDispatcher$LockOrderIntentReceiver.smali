.class Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UPlusRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UPlusRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockOrderIntentReceiver"
.end annotation


# static fields
.field public static final INTENT_ACTION_CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final INTENT_ACTION_CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field public static final INTENT_ACTION_EHRPD_AN_LOCK:Ljava/lang/String; = "android.intent.action.EHRPD_AN_LOCK"

.field public static final INTENT_ACTION_EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field public static final INTENT_ACTION_LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final INTENT_ACTION_LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final INTENT_ACTION_LTE_EMM_REJECT:Ljava/lang/String; = "com.lge.intent.action.LTE_EMM_REJECT"

.field public static final INTENT_ACTION_LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field private static final TAG:Ljava/lang/String; = "LockOrderIntentReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/UPlusRILEventDispatcher;
    .param p2, "x1"    # Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v3, "LockOrderIntentReceiver/onReceive"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$202(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    .line 598
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive / result, mIsLGTUnregister : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$200(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLGTUnauthenticated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$300(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLGTHDRNetworkError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$400(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLTEAuthError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$500(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLTEEMMReject : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$600(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRejectNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I
    invoke-static {v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$700(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # invokes: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->setPopUp()V
    invoke-static {v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$900(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    .line 604
    return-void

    .line 568
    :cond_2
    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$302(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 570
    :cond_3
    const-string v2, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$402(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 573
    :cond_4
    const-string v2, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 576
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$502(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 581
    :cond_6
    const-string v2, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 585
    const-string v2, "rejectCode"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 587
    .local v1, "rejectCode":I
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 589
    if-lez v1, :cond_7

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$602(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    .line 594
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v3, "rejectCode"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$702(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I

    .line 595
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v3, "esmRejectCode"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mEsmRejectNum:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$802(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I

    goto/16 :goto_0

    .line 592
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v2, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$602(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto :goto_1
.end method
