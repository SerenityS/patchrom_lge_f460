.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->redirectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 3863
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v1, "[PCO_TEST] redirectionDialog::setMobileDataEnabled(false)"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3868
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->WarningMobileDataDialog()V

    .line 3869
    return-void
.end method
