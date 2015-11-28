.class Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;
.super Ljava/lang/Object;
.source "UPlusRILEventDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/UPlusRILEventDispatcher;->showPopUp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v1, "showPopUp / onClick "

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$1102(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$602(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    move-result v4

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$502(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    move-result v3

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$402(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    move-result v2

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$302(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    move-result v1

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$202(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I
    invoke-static {v0, v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$702(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I

    return-void
.end method
