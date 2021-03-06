.class Lcom/vzw/location/VzwLocationManager$ListenerTransport;
.super Lcom/vzw/location/ILocationListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManager.ListenerTransport"

.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/ILocationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    if-nez p3, :cond_0

    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;-><init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v5, "VzwLocationManager.ListenerTransport"

    const-string v6, "[_handleMessage] Entering. Message received : TYPE_LOCATION_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/vzw/location/VzwLocation;

    .local v2, "location":Lcom/vzw/location/VzwLocation;
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v5, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .end local v2    # "location":Lcom/vzw/location/VzwLocation;
    :pswitch_1
    const-string v5, "VzwLocationManager.ListenerTransport"

    const-string v6, "[_handleMessage] Entering. Message received : TYPE_STATUS_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "provider"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "provider":Ljava/lang/String;
    const-string v5, "status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "status":I
    const-string v5, "extras"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "extras":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v5, v3, v4, v1}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_2
    const-string v5, "VzwLocationManager.ListenerTransport"

    const-string v6, "[_handleMessage] Entering. Message received : TYPE_PROVIDER_ENABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v5, "VzwLocationManager.ListenerTransport"

    const-string v6, "[_handleMessage] Entering. Message received : TYPE_PROVIDER_DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 3
    .param p1, "location"    # Lcom/vzw/location/VzwLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "VzwLocationManager.ListenerTransport"

    const-string v2, "[onLocationChanged] Entering. Send message : TYPE_LOCATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "VzwLocationManager.ListenerTransport"

    const-string v2, "[onProviderDisabled] Entering. Send message : TYPE_PROVIDER_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "VzwLocationManager.ListenerTransport"

    const-string v2, "[onProviderEnabled] Entering. Send message : TYPE_PROVIDER_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "VzwLocationManager.ListenerTransport"

    const-string v3, "[onStatusChanged] Entering. Send message : TYPE_STATUS_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "provider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    const-string v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
