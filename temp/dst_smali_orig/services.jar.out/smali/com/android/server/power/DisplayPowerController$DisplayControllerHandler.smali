.class final Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$600(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "currentBrightness":I
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->animateRecoverScreenBrightness(I)V
    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
