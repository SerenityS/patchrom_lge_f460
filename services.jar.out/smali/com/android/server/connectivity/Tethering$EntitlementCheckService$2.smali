.class Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    # invokes: Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->performServiceLayerEntitlementCheck()I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->access$200(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)I

    move-result v0

    .line 1355
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1356
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 1, ENTITLEMENT_CHECK_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->setAlarm_Entitle()V

    .line 1358
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 1368
    :goto_0
    return-void

    .line 1359
    :cond_0
    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 1360
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 2, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1362
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0

    .line 1364
    :cond_1
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 3, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1366
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0
.end method
