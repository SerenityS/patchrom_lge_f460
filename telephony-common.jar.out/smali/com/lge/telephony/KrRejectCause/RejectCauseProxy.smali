.class public Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;
.super Ljava/lang/Object;
.source "RejectCauseProxy.java"

# interfaces
.implements Lcom/lge/telephony/KrRejectCause/RejectCause;


# instance fields
.field private mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;


# direct methods
.method public constructor <init>(Lcom/lge/telephony/KrRejectCause/RejectCause;)V
    .locals 1
    .param p1, "rc"    # Lcom/lge/telephony/KrRejectCause/RejectCause;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    .line 17
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    .line 18
    return-void
.end method


# virtual methods
.method public bManualSelectionAvailable()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->bManualSelectionAvailable()Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRejectCause(II)Z
    .locals 2
    .param p1, "clear_mm"    # I
    .param p2, "clear_gmm"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v1, p1, p2}, Lcom/lge/telephony/KrRejectCause/RejectCause;->clearRejectCause(II)Z

    move-result v0

    .line 50
    :cond_0
    return v0
.end method

.method public handleServiceStatusResult(Landroid/os/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "result":I
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v1, p1}, Lcom/lge/telephony/KrRejectCause/RejectCause;->handleServiceStatusResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 25
    :cond_0
    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->initialize()V

    .line 32
    :cond_0
    return-void
.end method
