.class Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 278
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    # invokes: Lcom/android/server/power/ShutdownThread;->isSmartCoverClosed(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->access$100(Landroid/content/Context;)Z

    move-result v0

    .line 284
    .local v0, "coverClosed":Z
    # invokes: Lcom/android/server/power/ShutdownThread;->isSmartCoverEnabled(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->access$200(Landroid/content/Context;)Z

    move-result v1

    .line 285
    .local v1, "coverEnabled":Z
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverClosed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coverEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 287
    const-string v3, "ShutdownThread"

    const-string v4, "registering receiver for ACTION_ACCESSORY_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v3, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string v2, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 300
    .local v1, "currentState":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->isInitialStickyBroadcast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const-string v2, "ShutdownThread"

    const-string v3, "cover opened - closing shutdown dialog if it\'s shown"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 311
    .end local v1    # "currentState":I
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
