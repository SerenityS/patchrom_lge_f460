.class Lcom/android/server/wifi/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/wifi/extension/IWifiServiceExtension;->handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
