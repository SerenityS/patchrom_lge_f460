.class Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwGpsStatusListenerTransport"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManager.VzwGpsStatusListenerTransport"


# instance fields
.field private final mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

.field private final mVzwGpsStatusListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 1
    .param p2, "listener"    # Lcom/vzw/location/VzwGpsStatus$Listener;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    new-instance v0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mVzwGpsStatusListenerHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-void
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-object v0
.end method

.method private sendMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    invoke-static {p1}, Lcom/vzw/location/VzwGpsStatus;->getStringForStatus(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    const-string v1, "VzwLocationManager.VzwGpsStatusListenerTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendMessage] Sending message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mVzwGpsStatusListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1
    .param p1, "ttff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsStatus;->setTimeToFirstFix(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/vzw/location/VzwGpsDeviceStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onSatStatusChanged(II[I[I[F[F[F)V
    .locals 8
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[F[F[F)V

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onSvStatusChanged(II[I[I[F[F[F)V
    .locals 8
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "VzwLocationManager.VzwGpsStatusListenerTransport"

    const-string v1, "[onSvStatusChanged] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[F[F[F)V

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    :cond_0
    return-void
.end method
