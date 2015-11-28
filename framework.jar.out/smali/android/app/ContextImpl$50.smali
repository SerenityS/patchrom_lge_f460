.class final Landroid/app/ContextImpl$50;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 716
    const-string/jumbo v2, "vzwconnectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 717
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/verizon/net/Ivzwconnectivity$Stub;->asInterface(Landroid/os/IBinder;)Lcom/verizon/net/Ivzwconnectivity;

    move-result-object v1

    .line 718
    .local v1, "service":Lcom/verizon/net/Ivzwconnectivity;
    new-instance v2, Lcom/verizon/net/ConnectivityManager;

    invoke-direct {v2, v1}, Lcom/verizon/net/ConnectivityManager;-><init>(Lcom/verizon/net/Ivzwconnectivity;)V

    return-object v2
.end method
