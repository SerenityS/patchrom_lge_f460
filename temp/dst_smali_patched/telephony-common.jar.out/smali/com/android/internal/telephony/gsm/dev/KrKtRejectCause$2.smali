.class Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$2;
.super Ljava/lang/Object;
.source "KrKtRejectCause.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$2;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$2;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    # setter for: Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->access$202(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;Z)Z

    :cond_0
    return v1
.end method
